import 'package:blood_bank/Screens/onboarding_screen.dart';
import 'package:blood_bank/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  splashIt(int duration, BuildContext context) {
    return Future.delayed(
      Duration(seconds: duration),
      () => Navigator.pushReplacement(
        context,
        _createRoute(
          OnboardingScreen(),
        ),
      ),
    );
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
    splashIt(3, context);
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            splash_screen_background,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Center(
            child: Container(
              child: Column(
                children: [
                  Expanded(
                    child: SvgPicture.asset(splash_screen_logo),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
