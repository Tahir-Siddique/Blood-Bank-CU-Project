import 'dart:html';

import 'package:flutter/material.dart';
import 'package:blood_bank/constants.dart' as cn;
import 'package:country_list_pick/country_list_pick.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key key}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  String dropdownValue;
  String textinput;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(16),
              child: Text("Please enter 4 digit otp"),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(16),
              child: Text("Sent to +1234567890"),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * .7,
              margin: EdgeInsets.all(16),
              child: TextField(),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * .7,
              margin: EdgeInsets.all(16),
              child: Text("Don't tell this code to anyone"),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * .7,
              margin: EdgeInsets.all(16),
              child: Text("Expiring in 04:07 minutes"),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * .7,
              margin: EdgeInsets.all(16),
              child: TextButton(
                child: Text(
                  "Resend Otp",
                  style: TextStyle(color: cn.heading_style.color),
                ),
                onPressed: () => {},
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * .7,
              margin: EdgeInsets.all(16),
              child: TextButton(
                onPressed: () => {},
                child: Text("Accept"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => cn.heading_style.color),
                  foregroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.white),
                  padding: MaterialStateProperty.resolveWith(
                    (states) => EdgeInsets.only(
                        top: 20, bottom: 20, left: 100, right: 100),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * .7,
              margin: EdgeInsets.all(16),
              child: TextButton(
                child: Text(
                  "Terms of use Privacy Policy",
                  style: TextStyle(color: cn.heading_style.color),
                ),
                onPressed: () => {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Container getInputWidget(
  String value,
  String title,
  Widget widget,
  BuildContext context,
) {
  return Container(
    margin: EdgeInsets.all(20),
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
          alignment: Alignment.topLeft,
          child: Text(
            title,
            style: cn.text_style,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 5,
                offset: Offset(0, 5), // changes position of shadow
              )
            ],
          ),
          child: widget,
        ),
      ],
    ),
  );
}
