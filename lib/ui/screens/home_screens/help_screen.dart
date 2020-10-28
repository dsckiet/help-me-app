import 'package:flutter/material.dart';
import 'package:help_me/ui/shared/constants.dart';

class HelpScreen extends StatefulWidget {
  @override
  _HelpScreenState createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: size.height / 14,
          left: size.width / 19,
          right: size.width / 19,
        ),
        child: Column(
          children: <Widget>[
            Text(
              "Need Help",
              style: Theme.of(context).textTheme.headline5,
            ),
            //help message
            buildHelpMessage(context, size),
            //edit button
            buildEditButton(size),
            //send message button
            buildSendMessageButton(size),
            Container(
              padding: EdgeInsets.only(top: 16),
              alignment: Alignment.topLeft,
              child: Text("Contact list",
                  style: Theme.of(context).textTheme.headline6),
            ),
//            ListView(
////                itemCount: 1,
////                itemBuilder: (context,index) {
////                  return Card(child: Text("Ritik"));
////                }
//            children: <Widget>[
//              Card(
//                child: Row(
//                  children: <Widget>[
//                    Text("Ritik"),
//                    Icon(
//                      Icons.clear
//                    )
//                  ],
//                ),
//              )
//            ],
//                )
          ],
        ),
      ),
    );
  }

  Container buildSendMessageButton(Size size) {
    return Container(
      padding: EdgeInsets.only(top: 8.0),
      child: SizedBox(
        width: double.infinity,
        child: RaisedButton(
          padding:
              EdgeInsets.symmetric(vertical: 8, horizontal: size.width / 10),
          child: Text(
            "Send Message",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          color: kGreenColor,
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(8.0)),
          onPressed: () {},
        ),
      ),
    );
  }

  Container buildEditButton(Size size) {
    return Container(
      padding: EdgeInsets.only(top: size.height / 35),
      child: SizedBox(
        width: double.infinity,
        child: RaisedButton(
            padding:
                EdgeInsets.symmetric(vertical: 8, horizontal: size.width / 10),
            child: Text(
              "Edit",
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            color: kRedColor,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(8.0)),
            onPressed: () {}),
      ),
    );
  }

  Padding buildHelpMessage(BuildContext context, Size size) {
    return Padding(
      padding: EdgeInsets.only(top: size.height / 25),
      child: Text(
        "Hello guys,I Shubham Singh is in dangerplease help me if you canI am at 221b baker street",
        style: Theme.of(context).textTheme.bodyText1.copyWith(
              fontSize: 18,
            ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
