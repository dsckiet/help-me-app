import 'package:flutter/material.dart';
import 'package:help_me/Models/User.dart';
import 'package:help_me/ui/screens/Authentication/IntroScreen.dart';
import 'package:provider/provider.dart';

import 'ui/screens/HomeScreens/home_screen.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    if (user == null)
      return IntroScreen();
    else
      return HomeScreen();
  }
}
