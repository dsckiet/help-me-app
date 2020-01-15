import 'package:flutter/material.dart';
import 'package:help_me/routes/intro_screen.dart';

void main() => runApp(new MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          textTheme: TextTheme(
              headline: TextStyle(fontSize: 32, color: Color(0xFF2FB056)))),

      home: IntroScreen(),
    ));
