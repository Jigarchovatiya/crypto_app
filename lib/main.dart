import 'package:crypto_app/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crypto app',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      // routes: appRoutes,
      // initialRoute: RoutesName.splashScreen,
      home: const Splashscreen(),
    );
  }
}
