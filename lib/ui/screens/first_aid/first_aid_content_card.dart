import 'package:flutter/material.dart';
import 'package:help_me/Models/First_Aid_Content_Model.dart';
import 'package:help_me/models/first_aid_data_model.dart';
import 'package:provider/provider.dart';

import 'First_Aid_Content_Screen.dart';

//custom widget for first aid screen
class FirstAidContentCard extends StatelessWidget {
  final String title;
  FirstAidContentCard({this.title});
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<FirstAidDataRepository>(context);
    final size = MediaQuery.of(context).size;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: size.width * 0.058, vertical: 8),
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: ListTile(
          title: Text(
            title,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              Map map;
              for (int i = 0; i < data.firstAidData.length; i++) {
                if (data.firstAidData[i]['woundType'] == title)
                  map = Map.from(data.firstAidData[i]);
              }
              final FirstAidContentModel content = FirstAidContentModel(map);
              return Provider<FirstAidContentModel>.value(
                value: content,
                child: FirstAidContent(),
              );
            }));
          },
        ),
      ),
    );
  }
}
