import 'package:flutter/material.dart';

class FirstAidScreen extends StatefulWidget {
  @override
  _FirstAidScreenState createState() => _FirstAidScreenState();
}

class _FirstAidScreenState extends State<FirstAidScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 40.0),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Text(
              "First Aids",
              style: Theme.of(context).textTheme.headline,
            ),
            ListView.builder(itemBuilder: (BuildContext contxt,int index){

            }
            )
          ],
        ),
      ),
    );
  }
}
