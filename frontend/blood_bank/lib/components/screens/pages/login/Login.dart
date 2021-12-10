import 'package:blood_blank/components/constant/const.dart';
import 'package:blood_blank/components/widgets/CustomButton.dart';
import 'package:blood_blank/components/widgets/CustomInput.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Future<void> _alertDialogBuilder(String error) async {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Error'),
            content: Container(
              child: Text(error),
            ),
            actions: [
              FlatButton(
                child: Text('Close'),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }

  Future<String> _loginAccount() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _loginEmail,
        password: _loginPassword,
      );
      return null;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'No Account with that Email Please SignUp First!';
      } else if (e.code == 'wrong-password') {
        return 'Incorrect Password';
      }
      return e.message;
    } catch (e) {
      return e.toString();
    }
  }

  void _submitForm() async {
    setState(() {
      _loginPageLoading = true;
    });
    String _loginAccountFeedback = await _loginAccount();
    if (_loginAccountFeedback != null) {
      _alertDialogBuilder(_loginAccountFeedback);
      setState(() {
        _loginPageLoading = false;
      });
    } else {
      setState(() {
        _loginPageLoading = false;
      });
      Navigator.pushNamed(context, '/home');
    }
  }

  bool _loginPageLoading = false;
  String _loginEmail = '';
  String _loginPassword = '';
  // Focus node for input fields
  FocusNode _passwordFocusNode;
  @override
  void initState() {
    _passwordFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _passwordFocusNode = FocusNode();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              height: 200.0,
              width: 300.0,
              child: Image.asset("assets/medicine.png"),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome to Blood bank Login',
              style: Constant.regularWalkThroughHeadings,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            CustomInput(
              hintText: "Email",
              onChanged: (value) {
                _loginEmail = value;
              },
              onSubmitted: (value) {
                _passwordFocusNode.requestFocus();
              },
              textInputAction: TextInputAction.next,
            ),
            SizedBox(
              height: 20,
            ),
            CustomInput(
              hintText: "password",
              onChanged: (value) {
                _loginPassword = value;
              },
              onSubmitted: (value) {
                _submitForm();
              },
              isPassword: true,
              focusNode: _passwordFocusNode,
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              title: "LOGIN",
              onPressed: () {
                _submitForm();
              },
              isLoading: _loginPageLoading,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not A Member?",
                  style: Constant.regularWalkThroughBoldHeadings,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Text(
                      "Register",
                      style: TextStyle(
                          color: Color.fromRGBO(199, 40, 95, 1.0),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Text(
                  "Here",
                  style: Constant.regularWalkThroughBoldHeadings,
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Text(
                  "Sign In With",
                  style: Constant.regularWalkThroughBoldHeadings,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/facebook.png",
                    ),
                    Image.asset("assets/google.png")
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
