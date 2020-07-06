import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:help_me/shared/Constants.dart';

import 'OTPScreen.dart';

class SignInMobile extends StatefulWidget {
  @override
  _SignInMobileState createState() => _SignInMobileState();
}

class _SignInMobileState extends State<SignInMobile> {
  String number;
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
                    Text(
                      'Hey, There!\nWelcome to Helpme',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text('Enter You Mobile Number ',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        )),
                    SizedBox(height: 12),
                    TextFormField(
                      validator: (value) =>
                          value.length < 10 ? 'Invalid Phone Number' : null,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        setState(() {
                          number = value;
                        });
                      },
                      decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          hintText: '              00000-00000',
                          hintStyle: TextStyle(fontWeight: FontWeight.bold),
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
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
                      title: 'Enter Mobile',
                      onPressed: () {
                        if (_formKey.currentState.validate())
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return OTPScreen(number: number);
                          }));
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Back',
                        style: TextStyle(color: Colors.black, fontSize: 12)),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 60,
            left: 30,
            child: Image.asset(
              'assets/images/Hand.png',
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
