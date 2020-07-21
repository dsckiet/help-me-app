import 'package:flutter/material.dart';
import 'Register_Screen.dart';
import 'Login_Screen.dart';

class Authentication extends StatefulWidget {
  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  bool showSignIn = true;
  @override
  Widget build(BuildContext context) {
    void toggleShowSignIn() {
      setState(() {
        showSignIn = !showSignIn;
      });
    }
//Ye comment farzi hai
    //if (showSignIn)
      return LoginScreen(toggleShowSignIn);
    //else
      //return RegisterScreen(toggleShowSignIn);
  }
}
