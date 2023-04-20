import 'package:crypto_app/common/app_text_field.dart';
import 'package:crypto_app/extensions/extension.dart';
import 'package:crypto_app/routes/routes_name.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool password = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xFFFEFAF4),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Center(
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
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "your email",
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 15, fontFamily: "CircularStd"),
                    ),
                  ),
                  const SizedBox(height: 10),
                  AppTextField(
                    enabledBorder: const OutlineInputBorder(),
                    errorBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 1)),
                    hintText: "Email",
                    validator: (value) => value!.isValidEmail() ? null : "Please Enter Correct E-mail",
                    textInputAction: TextInputAction.next,
                    controller: emailController,
                    autofocus: true,
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
                    validator: (value) => value!.isValidPassword() ? null : "Please Enter Correct Password",
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
                                Icons.visibility_off_outlined,
                                size: 30,
                                color: Color(0xFF200E32),
                              )
                            : const Icon(
                                Icons.visibility_outlined,
                                size: 30,
                                color: Color(0xFF200E32),
                              )),
                  ),
                  const SizedBox(height: 50),
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
                      decoration: BoxDecoration(color: const Color(0xFF000000), borderRadius: BorderRadius.circular(15)),
                      alignment: Alignment.center,
                      child: const Text(
                        'Get Started',
                        style: TextStyle(fontFamily: 'Poppins-Regular.ttf', fontWeight: FontWeight.w700, color: Color(0xffFFFFFF)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    " Forgot Password?",
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
