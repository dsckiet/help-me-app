import 'package:flutter/material.dart';

class PrecautionScreen extends StatefulWidget {
  @override
  _PrecautionScreenState createState() => _PrecautionScreenState();
}

class _PrecautionScreenState extends State<PrecautionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 40.0),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Text(
              "Precautionary steps",
              style: Theme.of(context).textTheme.headline,
            ),
//            ListView.builder(
//                itemCount: 1,
//                itemBuilder: (BuildContext context,int index){
//                  return Card(
//                    child: Text("haath toot gaya khoon nikal raha he"),
//                  );
//            }
//            )
          ],
        ),
      ),
    );
  }
}
