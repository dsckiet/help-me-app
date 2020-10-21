import 'package:flutter/material.dart';
import 'package:help_me/ui/screens/authentication/login_form_screen.dart';
import 'package:help_me/ui/shared/base_auth_page.dart';
import 'package:help_me/ui/shared/constants.dart';
import 'package:help_me/ui/shared/long_button.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BaseAuthPage(
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
            'Continue With ',
            style: TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.normal),
          ),
          SizedBox(
            height: size.height / 60,
          ),
          buildSignInWithGoogleButton(size),
          SizedBox(
            height: size.height / 30,
          ),
          buildLogInOrRegisterButton(context),
          SizedBox(
            height: size.height / 5,
          ),
        ],
      ),
    );
  }

  LongButton buildLogInOrRegisterButton(BuildContext context) {
    return LongButton(
      color: kBlueColor,
      title: 'Login Or Register',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return LoginScreen();
            },
          ),
        );
      },
    );
  }

  LongButton buildSignInWithGoogleButton(Size size) {
    return LongButton(
      color: kRedColor,
      title: 'Google',
      onPressed: () {
        print(size.width);
        print(size.height);
        // TODO : ADD GOOGLE LOGIN
        // Navigator.pushReplacement(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) {
        //       return HomeScreen();
        //     },
        //   ),
        // );
      },
    );
  }
}
