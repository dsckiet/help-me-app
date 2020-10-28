import 'package:flutter/material.dart';

class PrecautionsContentCard extends StatelessWidget {
  final String title;

  //final Map map;
  PrecautionsContentCard({
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
          isThreeLine: false,
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
