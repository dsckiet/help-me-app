import 'package:flutter/gestures.dart';

import 'constants.dart';
import 'package:flutter/material.dart';

class BaseAuthPage extends StatelessWidget {
  final Widget child;
  final bool enableTopPadding;
  BaseAuthPage({this.child, this.enableTopPadding});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          backgroundColor: kGreyColor,
          body: Padding(
            padding: EdgeInsets.only(top: enableTopPadding ? 50.0 : 0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.fromLTRB(12, 12, 12, 0),
                    padding: EdgeInsets.fromLTRB(27, 0, 27, 0),
                    decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height / 30,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: kGetAppIcon(size: size.height / 7),
                        ),
                        SizedBox(
                          height: size.height / 40,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Hey, There!\nWelcome to Helpme',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height / 120,
                        ),
                        child
                      ],
                    ),
                  ),
                  //text area for term of use and privacy policy
                  buildPolicyPlaceHolder(size),
                ],
              ),
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
