import 'package:flutter/material.dart';
import 'package:help_me/presentation/core/constants.dart';

class PrecautionsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(context, size),
      body: buildPrecautionContentBody(size),
    );
  }

  Container buildPrecautionContentBody(Size size) {
    return Container(
      padding: EdgeInsets.only(top: size.height / 32),
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    left: size.width / 12,
                    right: size.width / 12,
                    bottom: size.height / 32,
                  ),
                  child: Text(
                      'sada adfad as asdas affdggsfgdfd gd gdsz xvdfgdf gdvkddfz gkfjdz fgdjkjf zj z zzzzzzzzzzzzzzzx       cccccccccdddddddddddddddddd dvvvvvvvffffffffffffsssssssssssssss'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context, Size size) {
    return AppBar(
      leading: Icon(
        Icons.arrow_back_ios,
        color: kBlueColor,
      ),
      backgroundColor: Colors.white,
      title: Text(
        'Ayush Sharma',
        style: Theme.of(context)
            .textTheme
            .headline5
            .copyWith(fontSize: size.height / 31),
      ),
      centerTitle: true,
      elevation: 2,
    );
  }
}
