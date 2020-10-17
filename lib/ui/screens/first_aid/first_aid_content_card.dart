import 'package:flutter/material.dart';
import 'package:help_me/Models/First_Aid_Content_Model.dart';
import 'package:provider/provider.dart';

import 'First_Aid_Content_Screen.dart';

//custom widget for first aid screen
class FirstAidContentCard extends StatelessWidget {
  final String title;
  final Map map;
  FirstAidContentCard({this.title, this.map});
  @override
  Widget build(BuildContext context) {
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
