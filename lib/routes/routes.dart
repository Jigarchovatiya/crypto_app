import 'package:crypto_app/routes/routes_name.dart';
import 'package:crypto_app/splash_screen.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> appRoutes = {
  RoutesName.splashScreen: (context) => const Splashscreen(),
};
