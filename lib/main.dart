import 'package:flutter/material.dart';
import 'package:menomate/screens/home.dart';
import 'package:menomate/screens/welcome.dart';
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body:  WelcomeScreen(),
      ),
    ),
  );
}
