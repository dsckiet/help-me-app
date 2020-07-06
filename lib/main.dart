import 'package:flutter/material.dart';
import 'package:help_me/services/firebase_auth.dart';
import 'package:help_me/ui/screens/Authentication/IntroScreen.dart';
import 'package:provider/provider.dart';

const Color greyColor = Color(0xFF707070);
const Color baseColor = Color(0xFF2FB056);

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    StreamProvider.value(
      value: AuthService().user,
      child: MaterialApp(
        theme: ThemeData(
            brightness: Brightness.light,
            buttonTheme: ButtonThemeData(
                buttonColor: baseColor, textTheme: ButtonTextTheme.primary),
            fontFamily: 'MontSerrat',
            textTheme: TextTheme(
                headline5: TextStyle(
                    fontSize: 32,
                    color: baseColor,
                    fontWeight: FontWeight.w600),
                headline6: TextStyle(
                    fontSize: 28,
                    color: greyColor,
                    fontWeight: FontWeight.w600),
                bodyText2: TextStyle(
                    fontSize: 20,
                    color: greyColor,
                    fontWeight: FontWeight.w600),
                bodyText1: TextStyle(
                    fontSize: 16,
                    color: greyColor,
                    fontWeight: FontWeight.w600))),
        home: IntroScreen(),
      ),
    ),
  );
}
