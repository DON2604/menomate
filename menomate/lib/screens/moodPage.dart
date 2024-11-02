import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:camera/camera.dart';
import 'dart:async';
import 'package:image/image.dart' as img;

class MoodPage extends StatefulWidget {
  const MoodPage({super.key});

  @override
  State<MoodPage> createState() => _MoodPageState();
}

class _MoodPageState extends State<MoodPage> {
  CameraController? _controller;
  late List<CameraDescription> cameras;
  String _emotion = 'Unknown';
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    initCamera();
  }

  Future<void> initCamera() async {
    try {
      cameras = await availableCameras();
      final frontCamera = cameras.firstWhere(
        (camera) => camera.lensDirection == CameraLensDirection.front,
        orElse: () => cameras.first, 
      );

      _controller = CameraController(
        frontCamera,
        ResolutionPreset.low, 
        imageFormatGroup: ImageFormatGroup.yuv420,
      );

      await _controller?.initialize();
      _controller?.startImageStream((CameraImage image) {
        if (_timer == null || !_timer!.isActive) {
          _timer = Timer(const Duration(seconds: 1), () {
            sendImageToServer(image);
          });
        }
      });
      setState(() {});
    } catch (e) {
      print('Error initializing camera: $e');
    }
  }

  void sendImageToServer(CameraImage image) async {
    final base64Image = _convertToBase64(image);
    final url = Uri.parse('http://192.168.0.207:5000/api/send_frame');
    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'frame': base64Image}),
      );
      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        setState(() {
          _emotion = responseData['emotion'] ?? 'Unknown';
        });
      } else {
        print('Server error: ${response.statusCode}');
      }
    } catch (e) {
      print('Error sending image: $e');
    }
  }

  String _convertToBase64(CameraImage image) {
    final img.Image? imgImage = _convertCameraImageToImage(image);
    if (imgImage != null) {
      final jpegData = img.encodeJpg(imgImage);
      return 'data:image/jpeg;base64,${base64Encode(Uint8List.fromList(jpegData))}';
    }
    return '';
  }

  img.Image? _convertCameraImageToImage(CameraImage image) {
    final width = image.width;
    final height = image.height;

    
    final imgImage = img.Image(width, height);

    
    for (int y = 0; y < height; y++) {
      for (int x = 0; x < width; x++) {
        final plane = image.planes[0];
        final pixel = plane.bytes[y * plane.bytesPerRow + x];
        imgImage.setPixel(x, y, img.getColor(pixel, pixel, pixel));
      }
    }

   
    final rotatedImage = img.copyRotate(imgImage, -90);

    return rotatedImage;
  }

  Widget _buildGif() {
    switch (_emotion.toLowerCase()) {
      case 'anger':
        return Image.asset('assets/moods/anger.gif',width: 180,);
      case 'surprise':
        return Image.asset('assets/moods/Surprise.gif',width: 180,);
      case 'happy':
        return Image.asset('assets/moods/happy.gif',width: 180,);
      case 'sad':
        return Image.asset('assets/moods/sad.gif',width: 180,);
      default:
        return Image.asset('assets/moods/unknown.gif',width: 180,);
    }
  }

@override
Widget build(BuildContext context) {
  if (_controller == null || !_controller!.value.isInitialized) {
    return const Center(child: CircularProgressIndicator());
  }
  return Scaffold(
    appBar: AppBar(title: const Text('Emotion Tracker 😒😜🥲🥺')),
    body: Column(
      children: [
        const SizedBox(height: 40,),
        Center(
          child: ClipOval(
            child: SizedBox(
              width: MediaQuery.of(context).size.width*0.85,
              height: MediaQuery.of(context).size.width*0.85,
              child: CameraPreview(_controller!),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Text(
            'Detected Emotion: $_emotion',
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 20),
        _buildGif(),  
      ],
    ),
  );
}


  @override
  void dispose() {
    _controller?.dispose();
    _timer?.cancel();
    super.dispose();
  }
}
