import 'package:flutter/material.dart';
import 'package:help_me/ui/screens/intro_screen.dart';

const Color greyColor = Color(0xFF707070);
const Color baseColor = Color(0xFF2FB056);

void main() => runApp(
      new MaterialApp(
        theme: ThemeData(
            brightness: Brightness.light,
            buttonTheme: ButtonThemeData(
                buttonColor: baseColor, textTheme: ButtonTextTheme.primary),
            fontFamily: 'Product Sans',
            textTheme: TextTheme(
                headline: TextStyle(
                    fontSize: 32,
                    color: baseColor,
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
      ),
    );
