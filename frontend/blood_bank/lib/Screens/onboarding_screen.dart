import 'package:blood_bank/Screens/welcome_screen.dart';
import 'package:blood_bank/constants.dart' as cn;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentPage = 0;
  bool isNextPageAvailable = true;
  String nextPage = "Next";
  PageController _pageController;
  bool isOnboardCompleted = false;
  @override
  Widget build(BuildContext context) {
    _pageController = new PageController();
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: cn.background_color,
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.fromLTRB(
                  30,
                  30,
                  10,
                  10,
                ),
                child: Text(
                  cn.become_a_donor_heading1,
                  style: cn.heading_style,
                ),
              ),
              Expanded(
                flex: 2,
                child: PageView.builder(
                  onPageChanged: (value) => setState(() {
                    currentPage = value;

                    if (currentPage == cn.onboard_screens.length - 1) {
                      setState(
                        () {
                          nextPage = "Done";
                          isOnboardCompleted = true;
                        },
                      );
                    } else {
                      setState(
                        () {
                          nextPage = "Next";
                          isOnboardCompleted = false;
                        },
                      );
                    }
                  }),
                  controller: _pageController,
                  itemCount: cn.onboard_screens.length,
                  itemBuilder: (context, index) => OnboardContent(
                    image_path: cn.onboard_screens[index]["image_path"],
                    text: cn.onboard_screens[index]["text"],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(
                            () {
                              currentPage = cn.onboard_screens.length - 1;
                              _pageController.jumpToPage(currentPage);
                            },
                          );
                        },
                        child: Text(
                          (isOnboardCompleted) ? "" : "Skip",
                          style: cn.text_style,
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: List.generate(
                              cn.onboard_screens.length,
                              (index) => buildSlider(index),
                            ),
                          )
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          setState(
                            () {
                              currentPage++;
                              _pageController.nextPage(
                                  duration: Duration(milliseconds: 800),
                                  curve: Curves.easeInCirc);
                            },
                          );
                          if (currentPage == cn.onboard_screens.length - 1) {
                            setState(
                              () {
                                nextPage = "Done";
                              },
                            );
                          }
                          if (currentPage == cn.onboard_screens.length) {
                            Navigator.pushReplacement(
                              context,
                              _createRoute(
                                WelcomeScreen(),
                              ),
                            );
                          }
                        },
                        child: Text(nextPage),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                            foregroundColor: MaterialStateProperty.all(
                                cn.heading_style.color)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildSlider(int index) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: cn.heading_style.color,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

Route _createRoute(Widget widget) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => widget,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    Key key,
    this.image_path,
    this.text,
  }) : super(key: key);
  final String image_path, text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          image_path,
          height: MediaQuery.of(context).size.height / 2.5,
        ),
        Container(
          margin: EdgeInsets.fromLTRB(30, 20, 30, 20),
          child: Text(
            text,
            style: cn.text_style,
          ),
        ),
      ],
    );
  }
}
