import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  List textList = [
    "your email",
    "Referral code (optional)",
    "Your password",
  ];
  List textList2 = [
    "Email",
    "Enter referral code",
    "Enter your password",
  ];

  bool isTrue = false;
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
                  "Sign Up",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25, fontFamily: "CircularStd"),
                ),
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Hey there! Sign up with your email to continue.",
                  style: TextStyle(color: Color(0xFF8C8A87), fontWeight: FontWeight.w400, fontSize: 15, fontFamily: "CircularStd"),
                ),
              ),
              const SizedBox(height: 50),
              ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                  height: 30,
                ),
                itemCount: 3,
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
                      const SizedBox(height: 10),
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
                                index == 2
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
              const SizedBox(height: 40),
              Row(
                children: const [
                  Icon(Icons.error_outline, size: 24),
                  Text(
                    "  Password must be more than 8 characters.",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 15, fontFamily: "CircularStd"),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  Icon(Icons.error_outline, size: 24),
                  Text(
                    "  Password must contain a mix of uppercase,\n  lowercase, numbers and special characters.",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 15, fontFamily: "CircularStd"),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Checkbox(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      value: isTrue,
                      onChanged: (value) {
                        isTrue = value!;
                        setState(() {});
                      }),
                  Expanded(
                    child: RichText(
                      text: const TextSpan(
                        text: "  I have read and agree to the",
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 14, fontFamily: "CircularStd"),
                        children: [
                          TextSpan(
                            text: " Terms & Conditions",
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 14, fontFamily: "CircularStd"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
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
                  decoration: BoxDecoration(color: const Color(0xFF9D9B97), borderRadius: BorderRadius.circular(15)),
                  alignment: Alignment.center,
                  child: const Text(
                    'Get Started',
                    style: TextStyle(fontFamily: 'Poppins-Regular.ttf', fontWeight: FontWeight.w700, color: Color(0xffFFFFFF)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                " Having issues >",
                style: TextStyle(color: Color(0xFFEE9136), fontWeight: FontWeight.w400, fontSize: 15, fontFamily: "CircularStd", decoration: TextDecoration.underline),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
