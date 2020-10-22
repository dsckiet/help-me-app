import 'package:flutter/material.dart';
import 'package:help_me/injection.dart';
import 'package:help_me/presentation/core/app_widget.dart';
import 'package:help_me/ui/screens/home_screens/help_screen.dart';
import 'package:help_me/ui/shared/theme_data.dart';
import 'package:injectable/injectable.dart';

void main() {
  //WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  runApp(
    (
        //AppWidget()
        MaterialApp(
      theme: kThemeData,
      debugShowCheckedModeBanner: false,
      home: HelpScreen(),
    )),
  );
}
