import 'package:flutter/material.dart';
import 'package:help_me/widgets/firstaid.dart';

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
              style: Theme.of(context).textTheme.headline5,
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
            ),
            //list of first aid topic cards
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, int i) {
                  return firstAidList[i];
                },
                itemCount: firstAidList.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
