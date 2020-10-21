import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:help_me/ui/screens/home_screens/home_screen.dart';
import 'package:help_me/ui/shared/base_auth_page.dart';
import 'package:help_me/ui/shared/constants.dart';
import 'package:help_me/ui/shared/long_button.dart';

class OTPScreen extends StatefulWidget {
  final String number;
  OTPScreen({@required this.number});
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
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
              height: size.height / 3.5,
            ),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Please Enter the OTP Sent to your Number\n',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  TextSpan(
                      text: "+91${widget.number}",
                      style: TextStyle(
                          color: kBlueColor, fontWeight: FontWeight.w900)),
                  TextSpan(
                      text: " to Verify and Continue ",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                          fontWeight: FontWeight.w400)),
                ],
              ),
            ),
            SizedBox(
              height: size.height / 18,
            ),
            Text('Auto Verifying the OTP ',
                style: TextStyle(fontSize: 12, color: Colors.black)),
            SizedBox(
              height: size.height / 30,
            ),
            TextFormField(
              textAlign: TextAlign.center,
              validator: (value) => value.length == 6 ? null : 'Invalid OTP',
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: '000000'),
            ),
            SizedBox(
              height: size.height / 30,
            ),
            LongButton(
              color: kBlueColor,
              title: 'Verify and Continue',
              onPressed: () {
                // TODO : VERIFY OTP
                // if (_formKey.currentState.validate())
                //   Navigator.pushReplacement(context,
                //       MaterialPageRoute(builder: (context) {
                //     return HomeScreen();
                //   }));
              },
            ),
            SizedBox(
              height: size.height / 60,
            ),
            GestureDetector(
                onTap: null, //TODO : Resend OTP
                child: Text('Resend OTP',
                    style: TextStyle(color: Colors.black, fontSize: 12))),
            SizedBox(
              height: size.height / 5,
            ),
          ],
        ),
      ),
    );
  }
}
