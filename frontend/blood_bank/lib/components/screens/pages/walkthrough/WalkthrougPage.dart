import 'dart:io';
import 'package:blood_blank/components/screens/pages/walkthrough/walkthrough.dart';
import 'package:flutter/material.dart';
import 'package:blood_blank/components/constant/const.dart';
import 'package:blood_blank/components/models/walkthrough.dart';

class WalkThroughPage extends StatefulWidget {
  @override
  _WalkThroughPageState createState() => _WalkThroughPageState();
}

class _WalkThroughPageState extends State<WalkThroughPage> {
  List<WalkthroughModel> walkthrough = new List<WalkthroughModel>();
  int currentPage = 0;
  PageController pageController = new PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    walkthrough = getWalkThroughScreen();
  }

  Widget PageIndexIndicatot(bool isCurrentPage) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
          color: isCurrentPage ? Colors.grey : Colors.grey[300],
          borderRadius: BorderRadius.circular(12)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: PageView.builder(
              controller: pageController,
              itemCount: walkthrough.length,
              onPageChanged: (val) {
                setState(() {
                  currentPage = val;
                });
              },
              itemBuilder: (context, index) {
                return WalkThrough(
                  ImagePath: walkthrough[index].ImagePath,
                  title: walkthrough[index].title,
                  description: walkthrough[index].description,
                );
              }),
        ),
        bottomSheet: currentPage != walkthrough.length - 1
            ? Container(
                height: Platform.isIOS ? 70 : 60,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        pageController.animateToPage(walkthrough.length - 1,
                            duration: Duration(milliseconds: 400),
                            curve: Curves.linear);
                      },
                      child: Text("skip", style: Constant.SliderButton),
                    ),
                    Row(
                      children: [
                        for (int i = 0; i < walkthrough.length; i++)
                          currentPage == i
                              ? PageIndexIndicatot(true)
                              : PageIndexIndicatot(false)
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        pageController.animateToPage(++currentPage,
                            duration: Duration(milliseconds: 400),
                            curve: Curves.linear);
                      },
                      child: Text("NEXT", style: Constant.SliderButton),
                    ),
                  ],
                ),
              )
            : GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Container(
                  height: Platform.isIOS ? 70 : 60,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  color: Color.fromRGBO(199, 40, 95, 1.0),
                  child: Text(
                    'Get Started',
                    style: Constant.boldRegularHeadings,
                  ),
                ),
              ));
  }
}
