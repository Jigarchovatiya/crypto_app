import 'package:crypto_app/bottom_bar/bottom_screen.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool isTrue = false;
  List textList = [
    "your email",
    "Your password",
  ];
  List textList2 = [
    "Email",
    "Enter your password",
  ];

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
              Align(
                alignment: Alignment.centerLeft,
                child: InkWell(
                  child: const Icon(
                    Icons.arrow_back_ios,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    debugPrint('next page');
                  },
                ),
              ),
              const SizedBox(height: 50),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Welcome back",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25, fontFamily: "CircularStd"),
                ),
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Sign in with your email to continue.",
                  style: TextStyle(color: Color(0xFF8C8A87), fontWeight: FontWeight.w400, fontSize: 15, fontFamily: "CircularStd"),
                ),
              ),
              const SizedBox(height: 80),
              ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                  height: 30,
                ),
                itemCount: 2,
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          textList[index],
                          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 15, fontFamily: "CircularStd"),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 47,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: const Color(0xFFE1E3E6),
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  textList2[index],
                                  style: const TextStyle(color: Color(0xFF8C8A87), fontWeight: FontWeight.w400, fontSize: 15, fontFamily: "CircularStd"),
                                ),
                                index == 1
                                    ? const Icon(
                                        Icons.visibility_off_outlined,
                                      )
                                    : const SizedBox(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BottomScreen(),
                      ));
                  debugPrint('next page');
                },
                child: Container(
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(color: const Color(0xFF000000), borderRadius: BorderRadius.circular(15)),
                  alignment: Alignment.center,
                  child: const Text(
                    'Get Started',
                    style: TextStyle(fontFamily: 'Poppins-Regular.ttf', fontWeight: FontWeight.w700, color: Color(0xffFFFFFF)),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                " Forgot Password?",
                style: TextStyle(color: Color(0xFFEE9136), fontWeight: FontWeight.w400, fontSize: 15, fontFamily: "CircularStd", decoration: TextDecoration.underline),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
