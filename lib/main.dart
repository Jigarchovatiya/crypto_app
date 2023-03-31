import 'package:crypto_app/routes/routes.dart';
import 'package:crypto_app/routes/routes_name.dart';
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
      theme: ThemeData(primarySwatch: Colors.blueGrey, bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.transparent)),
      routes: appRoutes,
      initialRoute: RoutesName.splashScreen,
      //home: const AssetScreen(),
    );
  }
}
