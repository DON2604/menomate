import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class tipgrid extends StatefulWidget {
  const tipgrid({
    super.key,
  });

  @override
  State<tipgrid> createState() {
    return _tipgrid();
  }
}

class _tipgrid extends State<tipgrid> {
  String? imageUrl;
  String? tip;
  List<dynamic> healthTips = [];

  @override
  void initState() {
    super.initState();
    fetchHealthTip();
  }

  Future<void> fetchHealthTip() async {
    final response = await http.get(Uri.parse(
        'http://192.168.0.207:5000/tips/Stay%20hydrated%20and%20rest'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      print(data);
      setState(() {
        healthTips = data;
      });
    } else {
      setState(() {
        healthTips = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (healthTips.isEmpty) {
      return const Center(
          child: CircularProgressIndicator(color: Color.fromARGB(255, 227, 82, 131),)); 
    }

    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 18,
        mainAxisSpacing: 18,
        childAspectRatio: 1,
      ),
      itemCount: healthTips.length, 
      itemBuilder: (context, index) {
        final healthTip = healthTips[index];
        return GridTile(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: 10,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    healthTip['image'],
                    height: 100,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    healthTip['tip'],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
