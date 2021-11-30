import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WelcomeScreen'),
      ),
      body: Center(
        child: Container(
          child: Text('WelcomeScreen'),
        ),
      ),
    );
  }
}
