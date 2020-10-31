import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:help_me/injection.dart';
// import 'package:help_me/presentation/core/app_widget.dart';
import 'package:help_me/presentation/core/theme_data.dart';
import 'package:help_me/presentation/routes/router.gr.dart';
import 'package:injectable/injectable.dart';

void main() {
  //WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  runApp(
    // (AppWidget()));
    MaterialApp(
      theme: kThemeData,
      debugShowCheckedModeBanner: false,
      builder: ExtendedNavigator.builder(
        router: Router(),
      ),
    ),
  );
}
