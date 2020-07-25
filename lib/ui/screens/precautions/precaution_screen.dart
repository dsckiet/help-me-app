import 'package:flutter/material.dart';
import 'package:help_me/models/precautions_data_model.dart';
import 'package:help_me/ui/screens/precautions/precaution_content_card.dart';
import 'package:provider/provider.dart';

class PrecautionScreen extends StatefulWidget {
  @override
  _PrecautionScreenState createState() => _PrecautionScreenState();
}

class _PrecautionScreenState extends State<PrecautionScreen> {
  @override
  Widget build(BuildContext context) {
    final precautionsData =
        Provider.of<PrecautionsDataRepository>(context).precautionsData;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 40.0),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Text(
              "Precautions",
              style: Theme.of(context).textTheme.headline5,
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
            ),
            //list of first aid topic cards
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, int i) {
                  return PrecautionsContentCard(
                    title: precautionsData[i]['title'],
                  );
                },
                itemCount: precautionsData.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
