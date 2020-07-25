import 'package:flutter/material.dart';
import 'package:help_me/ui/shared/constants.dart';

ThemeData kThemeData = ThemeData(
  brightness: Brightness.light,
  buttonTheme: ButtonThemeData(
      buttonColor: kRedColor, textTheme: ButtonTextTheme.primary),
  fontFamily: 'MontSerrat',
  textTheme: TextTheme(
    headline5:
        TextStyle(fontSize: 32, color: kBlueColor, fontWeight: FontWeight.w600),
    headline6:
        TextStyle(fontSize: 28, color: kFontColor, fontWeight: FontWeight.w600),
    bodyText2:
        TextStyle(fontSize: 20, color: kFontColor, fontWeight: FontWeight.w600),
    bodyText1:
        TextStyle(fontSize: 16, color: kFontColor, fontWeight: FontWeight.w600),
  ),

  inputDecorationTheme: InputDecorationTheme(
                  isDense: true,
                  
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  )),
);
