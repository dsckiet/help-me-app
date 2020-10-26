import 'package:flutter/material.dart';
import 'package:help_me/ui/shared/constants.dart';

//display the appropriate data after clicking on cards on the first aid screen
class FirstAidContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildFirstAidContentBody(size),
    );
  }

  Container buildFirstAidContentBody(Size size) {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      left: size.width / 14,
                      right: size.width / 14,
                      bottom: size.height / 34),
                  child: Text(
                      'oasiocadu cwuibebfow ewndoiewo wiubcboaidc dosbowi woefuwoufbiw c kwkuebodd owefeowbfhd fiuwouwebwefb fwbfuowf dwhkfbowubfwbkw wobwibwkf fowebw fkw ui wk wi wkw cbouwbckwdbcoiwe'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: Icon(
        Icons.arrow_back_ios,
        color: kBlueColor,
      ),
      backgroundColor: Colors.white,
      title: Text(
        'Ayush Sharma',
        style: Theme.of(context).textTheme.headline5.copyWith(fontSize: 22),
      ),
      centerTitle: true,
      elevation: 2,
    );
  }
}
