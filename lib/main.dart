import 'package:flutter/material.dart';
import 'package:help_me/routes/intro_screen.dart';

var greyColor = Color(0xFF707070);

void main() => runApp(new MaterialApp(
      theme: ThemeData(
          fontFamily: 'Product Sans',
          brightness: Brightness.light,
          textTheme: TextTheme(
              headline: TextStyle(
                  fontSize: 32,
                  color: Color(0xFF2FB056),
                  fontWeight: FontWeight.w600),
              title: TextStyle(
                  fontSize: 28,
                  color: greyColor,
                  fontWeight: FontWeight.w600),
              body1: TextStyle(
                  fontSize: 20,
                  color: greyColor,
                  fontWeight: FontWeight.w600),
              body2: TextStyle(
                  fontSize: 16,
                  color: greyColor,
                  fontWeight: FontWeight.w600))),
      home: IntroScreen(),
    ));
