import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:help_me/ui/shared/base_auth_page.dart';
import 'package:help_me/ui/shared/constants.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BaseAuthPage(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: size.height / 12,
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
            height: size.height / 20,
          ),
          //login form
          buildLoginForm(size, context),
          SizedBox(
            height: size.height / 20,
          ),
          //login button
          buildLoginButton(size, context),
          SizedBox(
            height: size.height / 30,
          ),
          //register button
          buildRegisterButton(size, context),
          SizedBox(
            height: size.height / 15,
          ),
        ],
      ),
    );
  }

  GestureDetector buildRegisterButton(Size size, BuildContext context) {
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
          'Register',
          style: Theme.of(context)
              .textTheme
              .bodyText2
              .copyWith(fontSize: size.height / 40, color: Color(0xFFFFFFFF)),
        ),
      ),
    );
  }

  GestureDetector buildLoginButton(Size size, BuildContext context) {
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
          'LogIn',
          style: Theme.of(context)
              .textTheme
              .bodyText2
              .copyWith(fontSize: size.height / 40, color: Color(0xFFFFFFFF)),
        ),
      ),
    );
  }

  Form buildLoginForm(Size size, BuildContext context) {
    return Form(
      child: Column(
        children: [
          Theme(
            data: Theme.of(context).copyWith(
                primaryColor: Color(
                    0xFF707070)), // To prevent the Icons from Changing Colors once Tapped
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2)),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1)),
                labelText: 'Enter email',
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
                icon: SvgPicture.asset(
                  'assets/icons/@.svg',
                  height: 15,
                  width: 15,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height / 40,
          ),
          Theme(
            data: Theme.of(context).copyWith(primaryColor: Color(0xFF707070)),
            child: TextFormField(
              decoration: InputDecoration(
                  icon: SvgPicture.asset(
                    'assets/icons/lock.svg',
                    height: 15,
                    width: 15,
                    color: Colors.black,
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2)),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1)),
                  labelText: 'Enter Password',
                  labelStyle: TextStyle(
                    color: Colors.black,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
