import 'dart:async';

import 'package:flutter/material.dart';

import 'intro_screen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  SplashscreenState createState() => SplashscreenState();
}

class SplashscreenState extends State<Splashscreen> {
  String? uid;
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const IntroScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset("assets/images/image1.png", height: 250),
              ),
              const SizedBox(height: 20),
              const Text(
                " WEL-COME ",
                style: TextStyle(color: Color(0xFF8C8A87), fontWeight: FontWeight.w700, fontSize: 30, fontFamily: "CircularStd"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
