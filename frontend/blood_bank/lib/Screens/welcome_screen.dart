import 'package:flutter/material.dart';
import 'package:blood_bank/constants.dart' as cn;
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: cn.background_color,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.fromLTRB(30, 10, 0, 10),
              height: MediaQuery.of(context).size.height * .1,
              child: SvgPicture.asset(cn.home_logo),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(30),
              child: Text(
                cn.we_are_here,
                style: cn.text_style,
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 30),
              child: Text(
                cn.welcome,
                style: cn.heading_style,
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              height: MediaQuery.of(context).size.height * .4,
              child: SvgPicture.asset(cn.welcome_svg),
            ),
            Container(
              padding: EdgeInsets.all(15),
              height: MediaQuery.of(context).size.height * .1,
              child: Container(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    cn.continue_with_phone,
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => Color.fromRGBO(222, 10, 30, 1),
                    ),
                    fixedSize: MaterialStateProperty.resolveWith((states) =>
                        Size.fromWidth(MediaQuery.of(context).size.width * .7)),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              height: MediaQuery.of(context).size.height * .1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    cn.dont_have_account,
                    style: cn.text_style,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      cn.sign_up,
                      style: TextStyle(color: cn.heading_style.color),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
