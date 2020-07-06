import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

Color kRedColor = Color(0xFFDB4437);
Color kBlueColor = Color(0xFF3498DB);
Color kGreyColor = Color(0xFFD5D5D5);
Color kWhiteColor = Color(0xFFFFFFFF);

Widget kGetAppIcon({double size = 100}) {
  return Image.asset(
    'assets/images/Hand.png', // TODO : Add SVG File
    height: size,
  );
}

class BasePage extends StatelessWidget {
  final Widget child;
  BasePage({this.child});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          resizeToAvoidBottomPadding: false,
          backgroundColor: kGreyColor,
          body: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(12, 12, 12, 0),
                  decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(12)),
                  child: child,
                ),
              ),
              SizedBox(
                child: Center(child: RichText(
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
                recognizer: TapGestureRecognizer()..onTap=(){}, //TODO : Link to Privacy Policy
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
                recognizer: TapGestureRecognizer()..onTap=(){}, //TODO : Link to Terms of Use
                style: TextStyle(
                    fontSize: 11,
                    color: Colors.black,
                    fontWeight: FontWeight.w600)),
          ],
        ),
      ),),
                height: 60,
              ),
            ],
          )),
    );
  }
}

class LongButton extends StatelessWidget {
  final Color color;
  final String title;
  final Function onPressed;
  LongButton({this.color, this.onPressed, this.title});
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: color,
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 48),
      child: Text(
        "$title",
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      shape:
          RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
      onPressed: onPressed,
    );
  }
}
