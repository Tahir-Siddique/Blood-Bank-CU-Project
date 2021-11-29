import 'package:blood_bank/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: background_color,
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.fromLTRB(
                  10,
                  10,
                  10,
                  10,
                ),
                child: Text(
                  become_a_donor,
                  style: TextStyle(color: text_color),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.fromLTRB(
                  10,
                  10,
                  10,
                  10,
                ),
                child: Text(
                  become_a_donor_heading1,
                  style: TextStyle(
                    color: heading1_color,
                    fontSize: 32,
                    fontFamily: "Heebo",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(
                  10,
                  10,
                  10,
                  10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      onboard1_image_path,
                      height: MediaQuery.of(context).size.height / 2.5,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 20, 30, 20),
                      child: Text(
                        onboard1_text,
                        style: TextStyle(color: text_color),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
