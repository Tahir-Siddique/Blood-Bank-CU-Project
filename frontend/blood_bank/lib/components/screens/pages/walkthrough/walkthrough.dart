import 'package:blood_blank/components/constant/const.dart';
import 'package:flutter/material.dart';

class WalkThrough extends StatelessWidget {
  String ImagePath, title, description;

  WalkThrough({this.ImagePath, this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(ImagePath),
          SizedBox(height: 20.0),
          Text(
            title,
            style: Constant.regularWalkThroughHeadings,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            description,
            style: Constant.regularWalkThroughBoldHeadings,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
