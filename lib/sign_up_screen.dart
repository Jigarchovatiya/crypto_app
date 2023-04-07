import 'package:crypto_app/routes/routes_name.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController referralController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isTrue = false;
  bool password = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xFFFEFAF4),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Center(
            child: Form(
              key: formKey,
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
                        debugPrint('Back ------>>');
                      },
                    ),
                  ),
                  const SizedBox(height: 30),
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
                  const SizedBox(height: 40),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "your email",
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 15, fontFamily: "CircularStd"),
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
                        child: TextFormField(
                          controller: emailController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter name';
                            } else if (value.length < 5) {
                              return 'too short';
                            }
                            return null;
                          },
                          autofocus: false,
                          decoration: const InputDecoration(
                            hintText: "Email",
                            hintStyle: TextStyle(
                              color: Color(0xFF8C8A87),
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Referral code (optional)",
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 15, fontFamily: "CircularStd"),
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
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter referral code';
                            } else if (value.length < 8) {
                              return 'Not valid';
                            }
                            return null;
                          },
                          controller: referralController,
                          autofocus: false,
                          textInputAction: TextInputAction.next,
                          textCapitalization: TextCapitalization.words,
                          decoration: const InputDecoration(
                            hintText: "Enter referral code",
                            hintStyle: TextStyle(
                              color: Color(0xFF8C8A87),
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Your password",
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 15, fontFamily: "CircularStd"),
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
                        child: TextFormField(
                          textInputAction: TextInputAction.done,
                          controller: passwordController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter password';
                            } else if (value.length < 8) {
                              return 'Please enter valid  password';
                            }
                            return null;
                          },
                          autofocus: false,
                          decoration: const InputDecoration(
                            hintText: "Enter your password",
                            hintStyle: TextStyle(
                              color: Color(0xFF8C8A87),
                            ),
                            border: InputBorder.none,
                            suffixIcon: Icon(Icons.visibility_off_outlined),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
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
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        RoutesName.bottomScreen,
                        (route) => false,
                      );
                      debugPrint('Bottom Screen ----->>');
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
                  const Text(
                    " Having issues >",
                    style: TextStyle(color: Color(0xFFEE9136), fontWeight: FontWeight.w400, fontSize: 15, fontFamily: "CircularStd", decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
