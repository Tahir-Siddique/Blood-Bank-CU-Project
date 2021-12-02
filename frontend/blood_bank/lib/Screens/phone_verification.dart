import 'package:flutter/material.dart';
import 'package:blood_bank/constants.dart' as cn;

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
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: cn.heading_style.color,
        title: Text(
          cn.create_account,
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(50),
              child: Column(
                children: [
                  getInputWidget(
                    dropdownValue,
                    "Country",
                    Container(
                      color: cn.background_color,
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: cn.text_style.color,
                        ),
                        iconSize: 24,
                        elevation: 16,
                        style: cn.text_style,
                        underline: Container(
                          height: 0,
                          color: cn.heading_style.color,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        items: <String>['One', 'Two', 'Free', 'Four']
                            .map<DropdownMenuItem<String>>(
                          (String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          },
                        ).toList(),
                      ),
                    ),
                    context,
                  ),
                  getInputWidget(
                    textinput,
                    "Phone Nummber",
                    Container(
                      color: cn.background_color,
                      child: Text(""),
                    ),
                    context,
                  ),
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
    margin: EdgeInsets.all(50),
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
