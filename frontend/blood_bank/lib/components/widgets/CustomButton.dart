import 'package:blood_blank/components/constant/const.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String title;
  final Function onPressed;
  bool isLoading;

  CustomButton({this.title, this.onPressed, this.isLoading});

  @override
  Widget build(BuildContext context) {
    bool _isLoading = isLoading ?? false;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 70,
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color.fromRGBO(199, 40, 95, 1.0),
        ),
        child: Stack(
          children: [
            Visibility(
              visible: _isLoading ? false : true,
              child: Center(
                child: Text(
                  title,
                  style: Constant.boldRegularHeadings,
                ),
              ),
            ),
            Visibility(
              visible: _isLoading ? true : false,
              child: Center(
                  child: SizedBox(
                      height: 30,
                      width: 30,
                      child: CircularProgressIndicator())),
            ),
          ],
        ),
      ),
    );
  }
}
