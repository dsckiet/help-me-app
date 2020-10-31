import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:help_me/domain/first_aid/first_aid.dart';
import 'package:help_me/presentation/core/constants.dart';
import 'package:help_me/presentation/precautions/widgets/precaution_tips_listview_widget.dart';

//display the appropriate data after clicking on cards on the first aid screen
class FirstAidContent extends StatelessWidget {
  final FirstAid firstAid;

  const FirstAidContent({Key key, this.firstAid}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildFirstAidContentBody(size),
    );
  }

  PrecautionTipsListViewWidget buildFirstAidContentBody(Size size) {
    return PrecautionTipsListViewWidget(
      title: 'Treatment',
      tips: firstAid.treatment,
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          ExtendedNavigator.of(context).pop();
        },
        child: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
      backgroundColor: kBlueColor,
      title: Text(
        firstAid.woundType,
        style: Theme.of(context)
            .textTheme
            .headline5
            .copyWith(fontSize: 22, color: Colors.white),
      ),
      centerTitle: true,
      elevation: 2,
    );
  }
}
