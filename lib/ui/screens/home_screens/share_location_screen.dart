import 'package:flutter/material.dart';
import 'package:help_me/ui/shared/constants.dart';

class ShareLocationScreen extends StatefulWidget {
  @override
  _ShareLocationScreenState createState() => _ShareLocationScreenState();
}

class _ShareLocationScreenState extends State<ShareLocationScreen> {
  bool switchValue = false;
  Color cardColor = Color(0xFFDB4437);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: size.height / 14,
            left: size.width / 19,
            right: size.width / 19,
          ),
          child: Column(
            children: <Widget>[
              Text(
                "Share your location",
                style: Theme.of(context).textTheme.headline5,
              ),
              //text area for helper text
              buildHelperText(size),
              //button for sharing location
              buildShareLocationButton(size),
              //Button to display and share unique code
              buildShareCodeButton(size, context),
              buildProceedButton(context, size)
            ],
          ),
        ),
      ),
    );
  }

  Container buildProceedButton(BuildContext context, Size size) {
    return Container(
      padding: EdgeInsets.only(top: 8.0),
      width: size.width,
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
                    fontSize: size.width / 24,
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
    );
  }

  Container buildShareCodeButton(Size size, BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8.0),
      width: size.width,
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
                    fontSize: size.height / 24,
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
    );
  }

  Card buildShareLocationButton(Size size) {
    return Card(
      color: cardColor,
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: size.height / 40, horizontal: size.width / 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Sharing Location',
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
                  } else {
                    cardColor = Color(0xFFDB4437);
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
    );
  }

  Padding buildHelperText(Size size) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: size.height / 30),
      child: Text(
        "If you are traveling to disaster-prone areas you can share your live location to your near and dear ones. This will help if during the disaster if some one-loss contact they can have the last location of you.",
        textAlign: TextAlign.center,
      ),
    );
  }
}
