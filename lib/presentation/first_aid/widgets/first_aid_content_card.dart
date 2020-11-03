import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:help_me/domain/first_aid/first_aid.dart';
import 'package:help_me/presentation/routes/router.gr.dart';

//custom widget for first aid screen
class FirstAidContentCard extends StatelessWidget {
  final FirstAid firstAid;
  FirstAidContentCard({
    this.firstAid,
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
            firstAid.woundType,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            ExtendedNavigator.of(context).push(
              Routes.firstAidContent,
              arguments: FirstAidContentArguments(firstAid: this.firstAid),
            );
          },
        ),
      ),
    );
  }
}
