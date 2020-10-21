import 'package:flutter/gestures.dart';

import 'constants.dart';
import 'package:flutter/material.dart';

class BaseAuthPage extends StatelessWidget {
  final Widget child;
  BaseAuthPage({this.child});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          backgroundColor: kGreyColor,
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.fromLTRB(12, 12, 12, 0),
                  padding: EdgeInsets.fromLTRB(27, 0, 27, 0),
                  decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(12)),
                  child: child,
                ),
                //text area for term of use and privacy policy
                buildPolicyPlaceHolder(size),
              ],
            ),
          )),
    );
  }

  SizedBox buildPolicyPlaceHolder(Size size) {
    return SizedBox(
      child: Center(
        child: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: ' By signing in, You agree to Helpme\'s\n ',
                style: TextStyle(
                    fontSize: 11,
                    color: Colors.black,
                    fontWeight: FontWeight.w300),
              ),
              TextSpan(
                  text: "\t\t\t\t\tPrivacy Policy",
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {}, //TODO : Link to Privacy Policy
                  style: TextStyle(
                      fontSize: 11,
                      color: Colors.black,
                      fontWeight: FontWeight.w500)),
              TextSpan(
                  text: " & ",
                  style: TextStyle(
                      fontSize: 11,
                      color: Colors.black,
                      fontWeight: FontWeight.w300)),
              TextSpan(
                  text: "Terms of Use",
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {}, //TODO : Link to Terms of Use
                  style: TextStyle(
                      fontSize: 11,
                      color: Colors.black,
                      fontWeight: FontWeight.w600)),
            ],
          ),
        ),
      ),
      height: size.height / 10,
    );
  }
}
