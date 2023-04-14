import 'package:crypto_app/res/routes/routes_name.dart';
import 'package:flutter/material.dart';

import '../../view/assets_screen.dart';
import '../../view/bottom_bar/bottom_screen.dart';
import '../../view/bottom_bar/explore.dart';
import '../../view/bottom_bar/home_screen.dart';
import '../../view/bottom_bar/invest.dart';
import '../../view/bottom_bar/profile.dart';
import '../../view/bottom_bar/save.dart';
import '../../view/challenge_screen.dart';
import '../../view/intro_screen.dart';
import '../../view/log_in_screen.dart';
import '../../view/sign_up_screen.dart';
import '../../view/splash_screen.dart';

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
