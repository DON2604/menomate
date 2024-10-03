import 'dart:async';
import 'package:flutter/material.dart';
import 'package:menomate/screens/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:menomate/screens/welcome.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  static const String KEYLOGIN = "login";

  @override
  void initState() {
    super.initState();
    whereToGo();
  }

  void whereToGo() async {
    var sharePref = await SharedPreferences.getInstance();
    var isLoggedIn = sharePref.getBool(KEYLOGIN) ?? false;

    Timer(const Duration(seconds: 3), () {
      if (isLoggedIn) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const HomePage()), 
        );
      } else {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const WelcomeScreen()), 
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 168, 168), 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/welcome/splash_image.png', width: 80, height: 80), 
            const SizedBox(height: 20),
            const Text(
              'Menomate', 
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 222, 112, 234), 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
