import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:help_me/domain/precautions/precautions.dart';
import 'package:help_me/presentation/core/constants.dart';

import 'widgets/precaution_tips_listview_widget.dart';

class PrecautionsContent extends StatelessWidget {
  final Precaution precaution;

  const PrecautionsContent({Key key, this.precaution}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(context, size),
      body: buildPrecautionContentBody(size, context),
    );
  }

  PageView buildPrecautionContentBody(Size size, BuildContext context) {
    return PageView(
      children: [
        //custom widget for displaying before after and during tips in a pageview
        PrecautionTipsListViewWidget(
          title: 'Before',
          tips: precaution.before,
        ),
        PrecautionTipsListViewWidget(
          title: 'During',
          tips: precaution.during,
        ),
        PrecautionTipsListViewWidget(
          title: 'After',
          tips: precaution.after,
        ),
      ],
    );
  }

  AppBar buildAppBar(BuildContext context, Size size) {
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
        precaution.title,
        style: Theme.of(context).textTheme.headline5.copyWith(
              fontSize: size.height / 31,
              color: Colors.white,
            ),
      ),
      centerTitle: true,
      elevation: 2,
    );
  }
}
