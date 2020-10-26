import 'package:flutter/material.dart';
import 'package:help_me/ui/shared/base_auth_page.dart';
import 'package:help_me/ui/shared/constants.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BaseAuthPage(
      enableTopPadding: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: size.height / 11,
          ),
          Text(
            'Continue With ',
            style: TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.normal),
          ),
          SizedBox(
            height: size.height / 40,
          ),
          buildSignInWithGoogleButton(size),
          SizedBox(
            height: size.height / 30,
          ),
          buildLogInOrRegisterButton(size),
          SizedBox(
            height: size.height / 8,
          ),
        ],
      ),
    );
  }

  GestureDetector buildLogInOrRegisterButton(Size size) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: size.height / 16,
        alignment: Alignment.center,
        width: size.width,
        decoration: BoxDecoration(
          color: kBlueColor,
          borderRadius: BorderRadius.circular(size.height / 90),
        ),
        child: Text(
          'LogIn or Register',
          style: Theme.of(context)
              .textTheme
              .bodyText2
              .copyWith(fontSize: size.height / 40, color: Color(0xFFFFFFFF)),
        ),
      ),
    );
  }

  GestureDetector buildSignInWithGoogleButton(Size size) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: size.height / 16,
        alignment: Alignment.center,
        width: size.width,
        decoration: BoxDecoration(
          color: kRedColor,
          borderRadius: BorderRadius.circular(size.height / 90),
        ),
        child: Text(
          'SignIn with Google',
          style: Theme.of(context)
              .textTheme
              .bodyText2
              .copyWith(fontSize: size.height / 40, color: Color(0xFFFFFFFF)),
        ),
      ),
    );
  }
}
