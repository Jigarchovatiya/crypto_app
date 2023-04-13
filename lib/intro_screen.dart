import 'package:crypto_app/extensions/extension.dart';
import 'package:crypto_app/page_view/page_view_one.dart';
import 'package:crypto_app/page_view/page_view_three.dart';
import 'package:crypto_app/page_view/page_view_two.dart';
import 'package:crypto_app/routes/routes_name.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController(initialPage: 0);
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xFFFEFAF4),
      body: Stack(
        children: [
          30.0.addHSpace(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: PageView(
              controller: pageController,
              children: const [
                PageViewOne(),
                PageViewTwo(),
                PageViewThree(),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RoutesName.signUpScreen);
                  debugPrint('Sign Up screen ---->>');
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "  already have an account?",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 14, fontFamily: "CircularStd"),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.pushNamed(context, RoutesName.logInScreen);
                      // debugPrint('Log In Screen ---->>');
                    },
                    child: const Text(
                      " Log In",
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 14, fontFamily: "CircularStd"),
                    ),
                  )
                ],
              ),
              50.0.addHSpace(),
            ],
          ),
        ],
      ),
    ));
  }
}
