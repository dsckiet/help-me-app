import 'package:flutter/material.dart';
import 'package:help_me/main.dart';
import '../wrapper.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//                Padding(
//                  padding: EdgeInsets.symmetric(horizontal: 40.0),
//                  child: Image(
//                    image: AssetImage("assets/images/introimage.png"),
//                  ),
//                ),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                Text(
                  "XYZ\nBE SAFE",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 48,
                      color: greyColor),
                ),
                Container(
                  padding: EdgeInsets.only(top: 36.0, left: 24.0, right: 24.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 48),
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(8.0)),
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Wrapper()));
                      },
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
