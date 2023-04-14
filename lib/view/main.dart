import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../res/routes/routes.dart';
import '../res/routes/routes_name.dart';

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
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Colors.transparent,
        ),
      ),
      routes: appRoutes,
      initialRoute: RoutesName.splashScreen,
      // home: const BottomScreen(),
    );
  }
}
