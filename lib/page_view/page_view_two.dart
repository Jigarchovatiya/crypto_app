import 'package:crypto_app/extensions/extension.dart';
import 'package:flutter/material.dart';

class PageViewTwo extends StatelessWidget {
  const PageViewTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        30.0.addHSpace(),
        const Text(
          "Accrue",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, fontFamily: "CircularStd"),
        ),
        40.0.addHSpace(),
        Image.asset(
          "assets/images/image2.png",
          height: 260,
        ),
        40.0.addHSpace(),
        const Text(
          "Invest like a beginner,\nearn like a pro",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22, fontFamily: "CircularStd"),
        ),
        30.0.addHSpace(),
        const Text(
          "Accrue helps you grow your idle money with dollar savings,\nstocks, and crypto.",
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(0xFF8C8A87), fontWeight: FontWeight.w400, fontSize: 14, fontFamily: "CircularStd"),
        ),
        100.0.addHSpace(),
        const Text(
          " Try out our time machine?",
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(0xFFEE9136), fontWeight: FontWeight.w400, fontSize: 14, fontFamily: "CircularStd"),
        ),
      ],
    );
  }
}
