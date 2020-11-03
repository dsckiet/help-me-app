import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:help_me/domain/precautions/precautions.dart';
import 'package:help_me/presentation/routes/router.gr.dart';

class PrecautionsContentCard extends StatelessWidget {
  final Precaution precaution;

  //final Map map;
  PrecautionsContentCard({
    this.precaution,
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
            precaution.title,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            ExtendedNavigator.of(context).push(
              Routes.precautionsContent,
              arguments:
                  PrecautionsContentArguments(precaution: this.precaution),
            );
          },
        ),
      ),
    );
  }
}
