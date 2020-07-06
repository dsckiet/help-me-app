import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:help_me/main.dart';
import 'package:help_me/services/firebase_auth.dart';
import 'package:help_me/ui/shared/loading.dart';

class LoginScreen extends StatefulWidget {
  final Function toggleShowSignIn;
  LoginScreen(this.toggleShowSignIn);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = AuthService();
  bool passwordVisible = true;
  String _email = '', _password = '', _error = '';
  bool loading = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return loading == true
        ? Loading()
        : Scaffold(
            body: SingleChildScrollView(
              child: Form(
                key: _formKey,
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
                          validator: (value) => value.isEmpty
                              ? 'Enter Valid E-mail Address'
                              : null,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: baseColor, width: 1),
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
                              color: baseColor,
                            ),
                          ),
                          onChanged: (value) {
                            setState(() {
                              _email = value;
                            });
                          },
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 20.0),
                          child: TextFormField(
                            validator: (value) => value.length < 6
                                ? 'Too Short (6 Char Minimun)'
                                : null,
                            obscureText: passwordVisible,
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: baseColor, width: 1),
                              ),
                              border: const OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: greyColor, width: 0.2),
                              ),
                              hintText: "Password",
                              prefixIcon: const Icon(
                                Icons.vpn_key,
                                color: baseColor,
                              ),
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
                            ),
                            onChanged: (value) {
                              setState(() {
                                _password = value;
                              });
                            },
                          )),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        child: SizedBox(
                          width: double.infinity,
                          child: RaisedButton(
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 48),
                            child: Text(
                              "Log in",
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(8.0)),
                            onPressed: () async {
                              if (_formKey.currentState.validate()) {
                                setState(() {
                                  loading = true;
                                });
                                dynamic result =
                                    await _auth.signInWithEmailandPassword(
                                        email: _email, password: _password);
                                if (result == null) {
                                  setState(() {
                                    loading = false;
                                    _error =
                                        'Can\'t Login with that Credentials';
                                  });
                                }
                              }
                            },
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: 40.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Don't have an account ? ",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: 'Product Sans',
                                  color: const Color(0xFF767676)),
                            ),
                            InkWell(
                              onTap: widget.toggleShowSignIn,
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
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        _error,
                        style: TextStyle(color: Colors.red, fontSize: 14),
                      ),
                      SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                            child: Image.asset("assets/images/google_logo.png",
                                height: 50),
                            onTap: () async {
                              try {
                                dynamic result = await _auth.signInWithGoogle();
                              } catch (e) {
                                print(e.toString());
                              }
                            },
                          ),
                          GestureDetector(
                            child: Icon(FontAwesome.facebook,
                                size: 50, color: Colors.blue),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
