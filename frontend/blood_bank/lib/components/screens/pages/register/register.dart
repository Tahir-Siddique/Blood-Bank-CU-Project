import 'package:blood_blank/components/constant/const.dart';
import 'package:blood_blank/components/widgets/CustomButton.dart';
import 'package:blood_blank/components/widgets/CustomDropdown.dart';
import 'package:blood_blank/components/widgets/CustomInput.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String _registerFirstName = "";
  String _registerLastName = "";
  String _registerEmail = "";
  String _registerPasword = "";
  bool _registerPageLoading = false;

  Future<void> _alertDialogBuilder(String error) async {
    print(error);
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

  Future<String> _createAccount() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _registerEmail,
        password: _registerPasword,
      );
      return null;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return 'Password is too Short.';
      } else if (e.code == 'email-already-in-use') {
        return 'The email is already in use please try a differient one!';
      }
      return e.message;
    } catch (e) {
      return e.toString();
    }
  }

  void _submitForm() async {
    setState(() {
      _registerPageLoading = true;
    });
    String _createAccountFeedback = await _createAccount();
    if (_createAccountFeedback != null) {
      _alertDialogBuilder(_createAccountFeedback);
      setState(() {
        _registerPageLoading = false;
      });
    } else {
      Navigator.pop(context);
    }
  }

  FocusNode _firstNameFocusNode;
  FocusNode _lastNameFocusNode;
  FocusNode _emailFocusNode;
  FocusNode _passwordFocusNode;

  @override
  void initState() {
    _passwordFocusNode = FocusNode();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _passwordFocusNode.dispose();
    // TODO: implement dispose
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
              height: 70,
            ),
            Container(
              height: 100.0,
              width: 300.0,
              child: Image.asset("assets/medicine.png"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                'Welcome to Blood bank Registration',
                style: Constant.regularWalkThroughHeadings,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomInput(
              hintText: "First Name",
              onChanged: (value) {
                _registerFirstName = value;
              },
              onSubmitted: (value) {
                _lastNameFocusNode.requestFocus();
              },
              textInputAction: TextInputAction.next,
              focusNode: _firstNameFocusNode,
            ),
            SizedBox(
              height: 20,
            ),
            CustomInput(
              hintText: "Last Name",
              onChanged: (value) {
                _registerLastName = value;
              },
              textInputAction: TextInputAction.next,
              onSubmitted: (value) {
                _emailFocusNode.requestFocus();
              },
              focusNode: _lastNameFocusNode,
            ),
            SizedBox(
              height: 20,
            ),
            CustomInput(
              hintText: "Email",
              onChanged: (value) {
                _registerEmail = value;
              },
              textInputAction: TextInputAction.next,
              onSubmitted: (value) {
                _passwordFocusNode.requestFocus();
              },
              focusNode: _emailFocusNode,
            ),
            SizedBox(
              height: 20,
            ),
            CustomInput(
              hintText: "password",
              onChanged: (value) {
                _registerPasword = value;
              },
              isPassword: true,
              focusNode: _passwordFocusNode,
            ),
            SizedBox(
              height: 20,
            ),
            CustomDropDown(),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              title: "Register",
              onPressed: () {
                setState(() {
                  _registerPageLoading = true;
                });
                _submitForm();
              },
              isLoading: _registerPageLoading,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have account?",
                  style: Constant.regularWalkThroughBoldHeadings,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Text(
                      "Sign In",
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
          ],
        ),
      ),
    );
  }
}
