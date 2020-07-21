import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:help_me/ui/shared/BaseAuthPage.dart';
import 'package:help_me/ui/shared/Constants.dart';
import 'package:help_me/ui/shared/LongButton.dart';
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
    final size = MediaQuery.of(context).size;
    return BaseAuthPage(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: size.height / 7,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: kGetAppIcon(size: size.height / 7),
            ),
            SizedBox(
              height: size.height / 30,
            ),
            Text(
              'Hey, There!\nWelcome to Helpme',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: size.height / 15,
            ),
            Text(
              'Enter Your Mobile Number ',
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: size.height / 60,
            ),
            TextFormField(
              textAlign: TextAlign.center,
              validator: (value) =>
                  value.length < 10 ? 'Invalid Phone Number' : null,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  number = value;
                });
              },
              decoration: InputDecoration(
                hintText: '00000-00000',
              ),
            ),
            SizedBox(
              height: size.height / 30,
            ),
            LongButton(
              color: kBlueColor,
              title: 'Continue',
              onPressed: () {
                if (_formKey.currentState.validate())
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return OTPScreen(
                          number: '56',
                        );
                      },
                    ),
                  );
              },
            ),
            SizedBox(
              height: size.height / 60,
            ),
            GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Text('Back',
                    style: TextStyle(color: Colors.black, fontSize: 12))),
            SizedBox(
              height: size.height / 5 - 24,
            ),
          ],
        ),
      ),
    );
  }
}
