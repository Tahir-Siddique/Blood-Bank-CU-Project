import 'package:blood_bank/Screens/otp_screen.dart';
import 'package:blood_bank/Screens/phone_verification.dart';
import 'package:blood_bank/Screens/splash_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pulse Blood',
      scrollBehavior: AppScrollBehavior(),
      theme: ThemeData(),
      home: SplashScreen(),
    );
  }
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
