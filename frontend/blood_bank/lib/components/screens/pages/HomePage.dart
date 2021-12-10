import 'package:blood_blank/components/widgets/bottomTabs.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Center(
              child: Text('HomePage'),
            ),
          ),
          Bottomtabs()
        ],
      ),
    );
  }
}
