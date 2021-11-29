import 'package:blood_bank/Screens/onboarding_screen.dart';
import 'package:blood_bank/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  splashIt(int duration, BuildContext context) {
    return Future.delayed(
        Duration(seconds: duration),
        () => Navigator.pushReplacement(
            context, _createRoute(OnBoardingScreen())));
  }

  Route _createRoute(Widget widget) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => widget,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          color: background_color,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: SvgPicture.asset(splash_screen_logo),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
