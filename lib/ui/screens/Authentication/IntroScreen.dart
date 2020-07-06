import 'package:flutter/material.dart';
import 'package:help_me/ui/screens/Authentication/SignInMobile.dart';
import 'package:help_me/ui/screens/HomeScreens/home_screen.dart';
import 'package:help_me/ui/shared/Constants.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return BasePage(
      child: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: EdgeInsets.fromLTRB(28, 200, 28, 80),
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
                  Text('Continue With ',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.normal)),
                  SizedBox(height: 12),
                  LongButton(
                    color: kRedColor,
                    title: 'Google',
                    onPressed: () {
                      // TODO : ADD GOOGLE LOGIN
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return HomeScreen();
                      }));
                    },
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text('Or',
                      style: TextStyle(color: Colors.black, fontSize: 12)),
                  SizedBox(
                    height: 10,
                  ),
                  LongButton(
                    color: kBlueColor,
                    title: 'Enter Mobile',
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return SignInMobile();
                      }));
                    },
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 60,
            left: 30,
            child: kGetAppIcon(),
          ),
        ],
      ),
    );
  }
}
