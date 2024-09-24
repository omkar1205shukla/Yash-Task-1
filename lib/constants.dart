import 'package:flutter/material.dart';

const defaultDuration = Duration(milliseconds: 250);
const headingStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);
const String kAddressNullError = "Please Enter your address";
const kAnimationDuration = Duration(milliseconds: 200);
const String kEmailNullError = "Please Enter your email";

const String kInvalidEmailError = "Please Enter Valid Email";

const String kMatchPassError = "Passwords don't match";

const String kNamelNullError = "Please Enter your name";

const String kPassNullError = "Please Enter your password";
const String kPhoneNumberNullError = "Please Enter your phone number";
const kPrimaryColor = Color.fromARGB(255, 19, 49, 221);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color.fromARGB(255, 19, 49, 221)],
);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kSecondaryColor = Color(0xFF979797);
const String kShortPassError = "Password is too short";
const kTextColor = Colors.black;
// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

final otpInputDecoration = InputDecoration(
  contentPadding: const EdgeInsets.symmetric(vertical: 16),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(color: kTextColor),
  );
}
