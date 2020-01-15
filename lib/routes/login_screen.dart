import 'package:flutter/material.dart';
import 'package:help_me/main.dart';
import 'package:help_me/routes/register_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordVisible=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 40, left: 20, right: 20),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Image(
                  image: AssetImage("assets/images/loginimage.png"),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 32.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: const Color(0xFF2FB056), width: 1),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: const OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: const Color(0xFF707070), width: 0.2),
                    ),
                    hintText: "Email",
                    prefixIcon: const Icon(
                      Icons.email,
                      color: const Color(0xFF2FB056),
                    ),
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    obscureText: passwordVisible,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color(0xFF2FB056), width: 1),
                      ),
                      border: const OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: const Color(0xFF707070), width: 0.2),
                      ),
                      hintText: "Password",
                      prefixIcon: const Icon(
                        Icons.vpn_key,
                        color: const Color(0xFF2FB056),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          passwordVisible
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: const Color(0xFF2FB056),
                        ),
                        onPressed: () {
                          setState(() {
                            passwordVisible = !passwordVisible;
                          });
                        },
                      ),
                    ),
                  )),
              Container(
                padding:
                EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    padding:
                    EdgeInsets.symmetric(vertical: 8, horizontal: 48),
                    child: Text(
                      "Log in",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(8.0)),
                    onPressed: ()=>{},
                  ),
                ),
              ),
              Container(
                padding:
                EdgeInsets.only(top: 40.0,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "Don't have an account ? ",
                      style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Product Sans',
                          color: const Color(0xFF767676)),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()));
                      },
                      child: Text(
                        "Register",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                          color: baseColor,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
