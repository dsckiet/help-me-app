import 'package:flutter/material.dart';
import 'package:help_me/services/firebase_auth.dart';
import 'package:help_me/ui/shared/ThemeData.dart';
import 'package:help_me/wrapper.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    StreamProvider.value(
      value: AuthService().user,
      child: MaterialApp(
        theme: kThemeData,
        home: Wrapper(),
      ),
    ),
  );
}
