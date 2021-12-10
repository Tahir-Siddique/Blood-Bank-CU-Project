import 'dart:math';

import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  final items = ['A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-'];
  String dropdownvalue = 'A+';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey, width: 1.5)),
      child: DropdownButton(
        hint: Text('Select Blood Group'),
        value: dropdownvalue,
        icon: Icon(Icons.keyboard_arrow_down),
        isExpanded: true,
        items: items.map((String items) {
          return DropdownMenuItem(value: items, child: Text(items));
        }).toList(),
        onChanged: (String newValue) {
          setState(() {
            dropdownvalue = newValue;
          });
        },
      ),
    );
  }
}
