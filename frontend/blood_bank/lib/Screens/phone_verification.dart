import 'dart:html';

import 'package:flutter/material.dart';
import 'package:blood_bank/constants.dart' as cn;
import 'package:country_list_pick/country_list_pick.dart';

class PhoneVerification extends StatefulWidget {
  const PhoneVerification({Key key}) : super(key: key);

  @override
  _PhoneVerificationState createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
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
              width: MediaQuery.of(context).size.width,
              height: 50,
              margin: EdgeInsets.all(16),
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.arrow_back_ios_new),
                color: Colors.black,
              ),
            ),
            Container(
              margin: EdgeInsets.all(50),
              child: Column(
                children: [
                  getInputWidget(
                    dropdownValue,
                    "Country",
                    Container(
                      height: 40,
                      color: cn.background_color,
                      child: CountryListPick(
                        initialSelection: '+92',
                        onChanged: (CountryCode code) {
                          // name of country
                          print(code.name);
                          // code of country
                          print(code.code);
                          // code phone of country
                          print(code.dialCode);
                          // path flag of country
                          print(code.flagUri);
                        },
                      ),
                    ),
                    context,
                  ),
                  getInputWidget(
                    textinput,
                    "Phone Nummber",
                    Container(
                      height: 40,
                      color: cn.background_color,
                      child: TextField(
                        onChanged: (value) => setState(() {
                          textinput = value;
                        }),
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    context,
                  ),
                  getInputWidget(
                      "",
                      "",
                      TextButton(
                        onPressed: () => {},
                        child: Text("Submit"),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith(
                                (states) => cn.heading_style.color),
                            foregroundColor: MaterialStateProperty.resolveWith(
                                (states) => Colors.white),
                            padding: MaterialStateProperty.resolveWith(
                                (states) =>
                                    EdgeInsets.only(top: 20, bottom: 20))),
                      ),
                      context)
                ],
              ),
            )
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
