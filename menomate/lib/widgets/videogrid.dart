import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoGrid extends StatefulWidget {
  const VideoGrid({Key? key}) : super(key: key);

  @override
  _VideoGridState createState() => _VideoGridState();
}

class _VideoGridState extends State<VideoGrid> {
  List<String> videoIds = [];

  @override
  void initState() {
    super.initState();
    fetchVideoIds();
  }

  Future<void> fetchVideoIds() async {
    final response = await http.get(
      Uri.parse('http://192.168.0.104:5000/tips/Stay%20hydrated%20and%20rest'),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        videoIds = List<String>.from(
          data.map((item) => _extractVideoId(item['video'])),
        );
      });
    } else {
      setState(() {
        videoIds = [];
      });
    }
  }

  String _extractVideoId(String videoUrl) {
    if (videoUrl.contains('youtu.be')) {
      return videoUrl.split('youtu.be/').last.split('?').first;
    } else if (videoUrl.contains('youtube.com/watch')) {
      final uri = Uri.parse(videoUrl);
      return uri.queryParameters['v'] ?? videoUrl.split('/').last;
    }
    return videoUrl;
  }

  String _getThumbnailUrl(String videoId) {
    return 'https://img.youtube.com/vi/$videoId/0.jpg';
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 180,
        autoPlay: true,
        viewportFraction: 0.8,
        autoPlayInterval: const Duration(seconds: 10),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        enlargeCenterPage: true,
        aspectRatio: 16 / 9,
        scrollDirection: Axis.horizontal,
      ),
      items: videoIds.map((videoId) {
        return GestureDetector(
          onTap: () {
            _launchUrl('https://www.youtube.com/watch?v=$videoId');
          },
          child: SizedBox(
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                _getThumbnailUrl(videoId),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  Future<void> _launchUrl(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }
}
