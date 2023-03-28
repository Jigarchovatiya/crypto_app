import 'package:crypto_app/bottom_bar/bottom_screen.dart';
import 'package:crypto_app/bottom_bar/explore.dart';
import 'package:crypto_app/bottom_bar/home_screen.dart';
import 'package:crypto_app/bottom_bar/invest.dart';
import 'package:crypto_app/bottom_bar/profile.dart';
import 'package:crypto_app/bottom_bar/save.dart';
import 'package:crypto_app/challenge_screen.dart';
import 'package:crypto_app/intro_screen.dart';
import 'package:crypto_app/log_in_screen.dart';
import 'package:crypto_app/routes/routes_name.dart';
import 'package:crypto_app/sign_up_screen.dart';
import 'package:crypto_app/splash_screen.dart';
import 'package:flutter/material.dart';

import '../assets_screen.dart';

Map<String, WidgetBuilder> appRoutes = {
  RoutesName.splashScreen: (context) => const Splashscreen(),
  RoutesName.introScreen: (context) => const IntroScreen(),
  RoutesName.logInScreen: (context) => const LogInScreen(),
  RoutesName.signUpScreen: (context) => const SignUpScreen(),
  RoutesName.bottomScreen: (context) => const BottomScreen(),
  RoutesName.homeScreen: (context) => const HomeScreen(),
  RoutesName.saveScreen: (context) => const Save(),
  RoutesName.investScreen: (context) => const Invest(),
  RoutesName.exploreScreen: (context) => const Explore(),
  RoutesName.profileScreen: (context) => const Profile(),
  RoutesName.challengeScreen: (context) => const ChallengeScreen(),
  RoutesName.assetScreen: (context) => const AssetScreen(),
};
