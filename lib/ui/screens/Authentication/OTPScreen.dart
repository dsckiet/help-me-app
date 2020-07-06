import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:help_me/shared/Constants.dart';
import 'package:help_me/ui/screens/Authentication/IntroScreen.dart';

class OTPScreen extends StatefulWidget {
  final String number;
  OTPScreen({this.number});
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BasePage(
      child: Stack(
        children: <Widget>[
          Form(
            key: _formKey,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: EdgeInsets.fromLTRB(28, 175, 28, 80),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text:
                                ' Please Enter the OTP Sent to your Number \n ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                          TextSpan(
                              text: "+91${widget.number}",
                              style: TextStyle(
                                  color: kBlueColor,
                                  fontWeight: FontWeight.w900)),
                          TextSpan(
                              text: " to Verify and Continue ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text('Auto Verifying the OTP ',
                        style: TextStyle(fontSize: 12, color: Colors.black)),
                    SizedBox(height: 20),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      validator: (value) =>
                          value.length < 4 ? 'Invalid OTP' : null,
                      decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          hintText: '                   000000',
                          hintStyle: TextStyle(fontWeight: FontWeight.bold),
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: kGreyColor, width: 1),
                          ),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          )),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    LongButton(
                      color: kBlueColor,
                      title: 'Verify and Continue',
                      onPressed: () {
                        if (_formKey.currentState.validate())
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return IntroScreen();
                          }));
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Resend OTP',
                        style: TextStyle(color: Colors.black, fontSize: 12)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
