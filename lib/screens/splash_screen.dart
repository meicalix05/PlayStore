import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_play_emulator/screens/login_screen.dart';
import '../main.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/images/GOOGLEPLAYICONLOGO.png',
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
