import 'package:blood_blank/components/screens/pages/HomePage.dart';
import 'package:blood_blank/components/screens/pages/login/Login.dart';
import 'package:blood_blank/components/screens/pages/register/register.dart';
import 'package:blood_blank/components/screens/pages/walkthrough/WalkthrougPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blood Bank',
      debugShowCheckedModeBanner: false,
      home: WalkThroughPage(),
      color: Colors.white,
      routes: {
        '/login': (context) => Login(),
        '/walkthrough': (context) => WalkThroughPage(),
        '/register': (context) => Register(),
        '/home': (context) => HomePage(),
      },
      theme: ThemeData(
        primaryColor: Color.fromRGBO(199, 40, 95, 1.0),
        accentColor: Color.fromRGBO(199, 40, 95, 1.0),
      ),
    );
  }
}
