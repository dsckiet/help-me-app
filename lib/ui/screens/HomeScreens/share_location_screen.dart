import 'package:flutter/material.dart';
import 'package:help_me/ui/shared/Constants.dart';

class ShareLocationScreen extends StatefulWidget {
  @override
  _ShareLocationScreenState createState() => _ShareLocationScreenState();
}

class _ShareLocationScreenState extends State<ShareLocationScreen> {
  bool switchValue = false;
  Color cardColor = Color(0xFFDB4437);
  String _switchText = "Turn on";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
          child: Column(
            children: <Widget>[
              Text(
                "Share your location",
                style: Theme.of(context).textTheme.headline5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 32.0),
                child: Text(
                  "If you are traveling to disaster-prone areas you can share your live location to your near and dear ones. This will help if during the disaster if some one-loss contact they can have the last location of you.",
                  textAlign: TextAlign.center,
                ),
              ),
              Card(
                color: cardColor,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        _switchText,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      Switch(
                        value: switchValue,
                        onChanged: (bool newSwitchValue) {
                          setState(() {
                            switchValue = newSwitchValue;
                            if (switchValue) {
                              cardColor = kGreenColor;
                              _switchText = "Turn off";
                            } else {
                              cardColor = Color(0xFFDB4437);
                              _switchText = "Turn on";
                            }
                          });
                        },
                        activeColor: Color(0xFFDB4437),
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.white,
                        inactiveThumbColor: kGreenColor,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 8.0),
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            "Your Unique Code",
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "- - - - - -",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: FlatButton(
                          onPressed: () => {},
                          child: Text(
                            "Share",
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(fontSize: 20),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 8.0),
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            "See shared location ",
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "8 People shared with you",
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: FlatButton(
                          onPressed: () => {},
                          child: Text(
                            "Proceed",
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(fontSize: 20),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
