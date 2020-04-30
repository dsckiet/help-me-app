import 'package:flutter/material.dart';
import 'package:help_me/main.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 40.0,left: 20.0,right: 20.0),
        child: Column(
          children: <Widget>[
            Text(
              "Profile",
              style: Theme.of(context).textTheme.headline,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 32.0),
              child: CircleAvatar(
                backgroundColor: baseColor,
                radius: 40.0,
                child: Text(
                  'S',
                  style: TextStyle(fontSize: 40.0,color: Colors.white),
                ),
              ),
            ),
            Text(
              'Shubham singh',
              style: TextStyle(
                  fontSize: 28.0,
                  fontFamily: 'Product Sans',
                  color: const Color(0xFF676767)),
            ),
            Container(
//              padding: EdgeInsets.symmetric(vertical: 0.0),
              child: Text(
                'shubham100ev@gmail.com',
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Product Sans',
                    color: const Color(0xFF676767)),
              ),
            ),
            Container(
//              padding: EdgeInsets.symmetric(vertical: 0.0),
              child: Text(
                '9415286980',
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Product Sans',
                    color: const Color(0xFF676767)),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 36.0),
              child: SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  padding:
                  EdgeInsets.symmetric(vertical: 8, horizontal: 48),
                  child: Text(
                    "Log out",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  color: baseColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0)),
                  onPressed: () => {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
