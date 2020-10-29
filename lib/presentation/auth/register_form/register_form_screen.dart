import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:help_me/presentation/core/base_auth_page.dart';
import 'package:help_me/presentation/core/constants.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BaseAuthPage(
      enableTopPadding: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //login form
          buildLoginForm(size, context),
          SizedBox(
            height: size.height / 30,
          ),
          //register button
          buildRegisterButton(size, context),
          SizedBox(
            height: size.height / 40,
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

  Form buildLoginForm(Size size, BuildContext context) {
    return Form(
      child: Column(
        children: [
          //name field
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2)),
              border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1)),
              labelText: 'Enter Name',
              labelStyle: TextStyle(
                color: Colors.black,
              ),
              icon: SvgPicture.asset(
                'assets/icons/name.svg',
                height: 15,
                width: 15,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: size.height / 90,
          ),
          //email field
          TextFormField(
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
          SizedBox(
            height: size.height / 90,
          ),
          //email field
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2)),
              border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1)),
              labelText: 'Enter Phone No.',
              labelStyle: TextStyle(
                color: Colors.black,
              ),
              icon: SvgPicture.asset(
                'assets/icons/phone.svg',
                height: 15,
                width: 15,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: size.height / 90,
          ),
          //password field
          TextFormField(
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
          SizedBox(
            height: size.height / 90,
          ),
          //re enter password field
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2)),
              border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1)),
              labelText: 'Confirm Password',
              labelStyle: TextStyle(
                color: Colors.black,
              ),
              icon: SvgPicture.asset(
                'assets/icons/confirm.svg',
                height: 15,
                width: 15,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
