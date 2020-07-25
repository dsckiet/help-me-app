import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class NearbyHcc extends StatefulWidget {
  final Position currentPos;
  NearbyHcc({this.currentPos});
  @override
  _NearbyHccState createState() => _NearbyHccState();
}

class _NearbyHccState extends State<NearbyHcc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 40.0),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Text(
                "Nearby HealthCare Centres",
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.center,
              ),
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
