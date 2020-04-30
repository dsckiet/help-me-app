import 'package:flutter/material.dart';
import 'package:help_me/main.dart';
import 'package:help_me/ui/screens/home_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  bool passwordVisible=true;
  bool passwordVisible1=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 40, left: 20, right: 20),
          child: Column(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: baseColor, width: 1),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: const OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: const Color(0xFF707070), width: 0.2),
                      ),
                      hintText: "Name",
                      prefixIcon: const Icon(
                        Icons.account_circle,
                        color: baseColor,
                      ),
                    ),
                  )),
              Container(
                  padding: EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: baseColor, width: 1),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: const OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: greyColor, width: 0.2),
                      ),
                      hintText: "Email",
                      prefixIcon: const Icon(
                        Icons.email,
                        color:baseColor,
                      ),
                    ),
                  )),
              Container(
                  padding: EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: baseColor, width: 1),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: const OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: greyColor, width: 0.2),
                      ),
                      hintText: "Phone",
                      prefixIcon: const Icon(
                        Icons.smartphone,
                        color:baseColor,
                      ),
                    ),
                  )),
              Container(
                  padding: EdgeInsets.only(top: 20.0),
                  child: TextFormField(
//                    controller: _newPass,
//                    obscureText: passwordVisible,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          passwordVisible
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: baseColor,
                        ),
                        onPressed: () {
                          setState(() {
                            passwordVisible = !passwordVisible;
                          });
                        },
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: baseColor, width: 1),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: const OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: greyColor, width: 0.2),
                      ),
                      hintText: "Password",
                      prefixIcon: const Icon(
                        Icons.vpn_key,
                        color:baseColor,
                      ),
                    ),
              )
              ),
              Container(
                  padding: EdgeInsets.only(top: 20.0),
                  child: TextFormField(
//                    controller: _newCnfPass,
//                    obscureText: passwordVisible,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          passwordVisible
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: baseColor,
                        ),
                        onPressed: () {
                          setState(() {
                            passwordVisible = !passwordVisible;
                          });
                        },
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: baseColor, width: 1),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: const OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: greyColor, width: 0.2),
                      ),
                      hintText: "Re-Password",
                      prefixIcon: const Icon(
                        Icons.vpn_key,
                        color: baseColor,
                      ),
                    ),
              )
              ),
              Container(
                padding: EdgeInsets.only(top: 20.0),
                child: SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    padding:
                    EdgeInsets.symmetric(vertical: 8, horizontal: 48),
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    color:baseColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(8.0)),
                    onPressed: ()=>Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeScreen())),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
