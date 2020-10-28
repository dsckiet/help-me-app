import 'package:flutter/material.dart';
import 'package:help_me/ui/screens/authentication/intro_screen.dart';
import 'package:help_me/ui/shared/constants.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: size.height / 15,
          left: size.width / 20,
          right: size.width / 20,
        ),
        child: Column(
          children: <Widget>[
            Text(
              "Profile",
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(
              height: size.height / 10,
            ),
            buildCircleAvatar(size),
            Text(
              'Shubham singh',
              style: TextStyle(
                  fontSize: 28.0,
                  fontFamily: 'Product Sans',
                  color: const Color(0xFF676767)),
            ),
            Container(
              child: Text(
                'shubham100ev@gmail.com',
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Product Sans',
                    color: const Color(0xFF676767)),
              ),
            ),
            Container(
              child: Text(
                '9415286980',
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Product Sans',
                    color: const Color(0xFF676767)),
              ),
            ),
            buildLogOutButton(context, size)
          ],
        ),
      ),
    );
  }

  Container buildCircleAvatar(Size size) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: size.height / 15),
      child: Material(
        elevation: size.height / 25,
        borderRadius: BorderRadius.circular(size.height / 15),
        child: CircleAvatar(
          backgroundColor: kGreenColor,
          radius: size.height / 15,
          child: Text(
            'S',
            style: TextStyle(fontSize: size.height / 15, color: Colors.white),
          ),
        ),
      ),
    );
  }

  Container buildLogOutButton(BuildContext context, Size size) {
    return Container(
      padding: EdgeInsets.only(top: size.height / 15),
      child: SizedBox(
        width: double.infinity,
        child: RaisedButton(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 48),
          child: Text(
            "Log out",
            style: Theme.of(context)
                .textTheme
                .bodyText1
                .copyWith(fontSize: 24.0, color: Colors.white),
          ),
          color: kRedColor,
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(8.0)),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return IntroScreen();
            }));
          },
        ),
      ),
    );
  }
}
