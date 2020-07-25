import 'package:flutter/material.dart';
import 'package:help_me/models/first_aid_data_model.dart';
import 'package:provider/provider.dart';
import 'First_Aid_Content_Card.dart';

class FirstAidScreen extends StatefulWidget {
  @override
  _FirstAidScreenState createState() => _FirstAidScreenState();
}

class _FirstAidScreenState extends State<FirstAidScreen> {
  @override
  Widget build(BuildContext context) {
    final firstAidData = Provider.of<FirstAidDataRepository>(context).firstAidData;
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
                  return FirstAidContentCard(title: firstAidData[i]['woundType'],);
                },
                itemCount: firstAidData.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
