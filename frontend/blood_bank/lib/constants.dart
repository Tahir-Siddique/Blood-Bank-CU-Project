import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

////////////////////////////////////////////////////////////
///
///                     Color Constants
///
////////////////////////////////////////////////////////////
///
///
const background_color = Color.fromRGBO(254, 254, 254, 1);
const heading_style = TextStyle(
  color: Color.fromRGBO(167, 31, 35, 1),
  fontSize: 32,
  fontFamily: "Heebo",
  fontWeight: FontWeight.bold,
);
const text_style = TextStyle(
  color: Color.fromRGBO(126, 126, 126, 1),
);

///
///
////////////////////////////////////////////////////////////
///
///                     Text Constants
///
////////////////////////////////////////////////////////////
const become_a_donor = "Become a donor";
const become_a_donor_heading1 = "Become a Blood\nDonor & Save Lives";
const we_are_here = "You Need Blood, We Are Here";
const welcome = "Welcome!";
const continue_with_phone = "Continue with phone";
const dont_have_account = "Don't have an account?";
const sign_up = "Sign Up";
const create_account = "Create Account";

///
///
///////////////////////////////////////////////////////////////
///
///                     Image Constants
///
////////////////////////////////////////////////////////////
const splash_screen_logo = "/svg/logo.svg";
const home_logo = "assets/svg/logo2.svg";
const welcome_svg = "/svg/welcome.svg";
const splash_screen_background = "/images/background.png";

///
///
////////////////////////////////////////////////////////////
///
///                    Onboard Screens
///
////////////////////////////////////////////////////////////
const List<Map<String, String>> onboard_screens = [
  {
    "image_path": "/svg/onboard1.svg",
    "text":
        "Users will be able to create account to become donor and wil be able to save the life",
  },
  {
    "image_path": "/svg/onboard2.svg",
    "text":
        "Users will be able to find blood donors & request for blood for specific date, time and place ",
  },
  {
    "image_path": "/svg/onboard3.svg",
    "text":
        "Case of emergency, users will be able to get contact number of public account of donors",
  },
];
