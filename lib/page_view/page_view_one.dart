import 'package:crypto_app/extensions/extension.dart';
import 'package:flutter/material.dart';

class PageViewOne extends StatelessWidget {
  const PageViewOne({Key? key}) : super(key: key);

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
        50.0.addHSpace(),
        Image.asset(
          "assets/images/image1.png",
          height: 260,
        ),
        40.0.addHSpace(),
        const Text(
          "Send cash to anyone, anywhere",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25, fontFamily: "CircularStd"),
        ),
        30.0.addHSpace(),
        const Text(
          "Send cash to anyone’s bank account, mobile money, MPESA, and more. We’re the easiest, cheapest and fastest it gets.",
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
