import 'package:flutter/material.dart';
import 'package:help_me/Models/User.dart';
import 'package:help_me/ui/screens/Authentication/Authentication.dart';
import 'package:help_me/ui/screens/home_screen.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    if (user == null)
      return Authentication();
    else
      return HomeScreen();
  }
}
