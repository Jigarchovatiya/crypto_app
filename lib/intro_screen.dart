import 'package:crypto_app/log_in_screen.dart';
import 'package:crypto_app/sign_up_screen.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xFFFEFAF4),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              const Text(
                "Accrue",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, fontFamily: "CircularStd"),
              ),
              const SizedBox(height: 60),
              Image.asset(
                "assets/images/image1.png",
                height: 260,
              ),
              const SizedBox(height: 50),
              const Text(
                "Send cash to anyone, anywhere",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25, fontFamily: "CircularStd"),
              ),
              const SizedBox(height: 20),
              const Text(
                "Send cash to anyone’s bank account, mobile money, MPESA, and more. We’re the easiest, cheapest and fastest it gets.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xFF8C8A87), fontWeight: FontWeight.w400, fontSize: 14, fontFamily: "CircularStd"),
              ),
              const SizedBox(height: 80),
              const Text(
                " Try out our time machine?",
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xFFEE9136), fontWeight: FontWeight.w400, fontSize: 14, fontFamily: "CircularStd"),
              ),
              const SizedBox(height: 30),
              Image.asset(
                "assets/images/indicator.png",
                height: 10,
              ),
              const SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ));
                  debugPrint('next page');
                },
                child: Container(
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(15)),
                  alignment: Alignment.center,
                  child: const Text(
                    'Create an account',
                    style: TextStyle(fontFamily: 'Poppins-Regular.ttf', fontWeight: FontWeight.w700, color: Color(0xffFFFFFF)),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LogInScreen(),
                      ));
                  debugPrint('next page');
                },
                child: RichText(
                  text: const TextSpan(
                    text: "  already have an account?",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 14, fontFamily: "CircularStd"),
                    children: [
                      TextSpan(
                        text: " Log In",
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 14, fontFamily: "CircularStd"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
