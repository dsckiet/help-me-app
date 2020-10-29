import 'package:flutter/material.dart';

//custom widget for first aid screen
class FirstAidContentCard extends StatelessWidget {
  final String title;
  //final Map map;
  FirstAidContentCard({
    this.title,
  });
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width / 15, vertical: size.height / 85),
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: ListTile(
          title: Text(
            title,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {},
        ),
      ),
    );
  }
}
