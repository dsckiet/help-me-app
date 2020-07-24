import 'package:flutter/material.dart';
import 'package:help_me/Models/first_aid_content_model.dart';
import 'package:provider/provider.dart';

//display the appropriate data after clicking on cards on the first aid screen
class FirstAidContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final content = Provider.of<FirstAidContentModel>(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 40.0),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.032),
              child: Text(
                content.data['woundType'],
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(fontSize: 25),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: size.width * 0.08,
                        right: size.width * 0.08,
                        bottom: 20),
                    child: Text(content.data['treatment'][0]),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
