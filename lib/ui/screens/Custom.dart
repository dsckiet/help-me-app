import 'package:flutter/material.dart';

class CustomScreen extends StatefulWidget {
  @override
  _CustomScreenState createState() => _CustomScreenState();
}

class _CustomScreenState extends State<CustomScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFD5D5D5),
        body: Container(
          margin: EdgeInsets.fromLTRB(13, 12, 11, 50),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(28, 217, 28, 100),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text('Hey, There!\nWelcome to Helpme',
                          style: TextStyle(
                            color: Color(0xFF121212),
                            fontSize: 24,
                          )),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Continue With ',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xFF000000)),
                      ),
                      SizedBox(height: 13),
                      RaisedButton(
                        color: Color(0xFFDB4437),
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 48),
                        child: Text(
                          "Google",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(8.0)),
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text('Or',
                          style: TextStyle(color: Colors.black, fontSize: 12)),
                      SizedBox(
                        height: 14,
                      ),
                      RaisedButton(
                        color: Color(0xFF3498DB),
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 48),
                        child: Text(
                          "Enter Mobile",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 100,
                left: 30,
                child: Image.asset(
                  'assets/images/Hand.png',
                  height: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
