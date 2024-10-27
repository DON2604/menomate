import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:menomate/screens/login.dart';
import 'package:menomate/screens/signup.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70, left: 80),
            child: Text("Welcome to",
                style: GoogleFonts.robotoMono(
                    fontSize: 40, fontWeight: FontWeight.w500)),
          ),
          Center(
            child: Text("MenoMate",
                style: GoogleFonts.robotoMono(
                    fontSize: 40, fontWeight: FontWeight.w500)),
          ),
          const SizedBox(height: 20),
          Center(
            child: Text("AI and You: The Perfect Cycle Duo!",
                style: GoogleFonts.notoSans(
                    fontSize: 20, fontWeight: FontWeight.w200)),
          ),
          const SizedBox(height: 50),
          Image.asset("assets/welcome/welcome.gif"),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  );
                },
                child: const Text('login'),
              ),
              const SizedBox(
                width: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignupScreen()),
                  );
                },
                child: const Text('SignUp'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
