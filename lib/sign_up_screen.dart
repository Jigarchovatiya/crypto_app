import 'package:crypto_app/routes/routes_name.dart';
import 'package:flutter/material.dart';

import 'common/app_text_field.dart';

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
  bool isTrue = true;
  bool password = true;
  bool validator = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xFFFEFAF4),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            physics: const BouncingScrollPhysics(),
            child: Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              onChanged: () {
                setState(() {});
              },
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
                  AppTextField(
                    hintText: "Email",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter Email";
                      } else if (!RegExp(r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1D,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))\$').hasMatch(value!)) {
                        return "Please Enter a Valid Email";
                      }
                      return null;
                    },
                    textInputAction: TextInputAction.next,
                    controller: emailController,
                    autofocus: true,
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
                  AppTextField(
                    hintText: "Enter Referral code",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter referral";
                      } else if (RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)").hasMatch(value)) {
                        return "Please Enter a Valid referral code";
                      }
                      return null;
                    },
                    controller: referralController,
                    autofocus: false,
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
                  AppTextField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter password';
                      } else if (RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)").hasMatch(value)) {
                        return 'Please enter valid  password';
                      }
                      return null;
                    },
                    obscureText: password,
                    controller: passwordController,
                    hintText: "Password",
                    suffixIcon: IconButton(
                        onPressed: () {
                          password = !password;
                          setState(() {});
                        },
                        icon: password == true
                            ? const Icon(
                                Icons.visibility_off,
                                size: 30,
                              )
                            : const Icon(
                                Icons.visibility,
                                size: 30,
                              )),
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
                      IconButton(
                        splashRadius: 1,
                        onPressed: () {
                          setState(() {
                            isTrue = !isTrue;
                          });
                        },
                        icon: Container(
                          child: isTrue
                              ? const Icon(
                                  Icons.circle_outlined,
                                  size: 30,
                                  color: Color(0xFF9D9B97),
                                )
                              : const Icon(
                                  Icons.check_circle,
                                  size: 30,
                                  color: Color(0xFF9D9B97),
                                ),
                        ),
                      ),
                      // Checkbox(
                      //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      //     value: isTrue,
                      //     onChanged: (value) {
                      //       isTrue = value!;
                      //       setState(() {});
                      //     }),
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
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.validate();
                        debugPrint("validate ---> ${formKey.currentState!.validate()}");
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          RoutesName.bottomScreen,
                          (route) => false,
                        );
                        debugPrint('Bottom Screen ----->>');
                        setState(() {});
                      } else {
                        formKey.currentState!.save();
                      }
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
