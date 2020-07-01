import 'package:flutter/material.dart';
import 'package:help_me/main.dart';
import 'package:help_me/shared/loading.dart';
import 'package:help_me/services/firebase_auth.dart';

class RegisterScreen extends StatefulWidget {
  final Function toggleShowSignIn;
  RegisterScreen(this.toggleShowSignIn);
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool passwordVisible = true;
  bool passwordVisible1 = true;
  bool loading = false;
  final _auth = AuthService();
  String _email = '', _password = '', _error = '', _phone = '', _name = '';
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
                      Container(
                          padding: EdgeInsets.only(top: 20.0),
                          child: TextFormField(
                            validator: (value) => value.isEmpty
                                ? 'We know that\'s not your Name'
                                : null,
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
                                    color: const Color(0xFF707070), width: 0.2),
                              ),
                              hintText: "Name",
                              prefixIcon: const Icon(
                                Icons.account_circle,
                                color: baseColor,
                              ),
                            ),
                            onChanged: (value) {
                              setState(() {
                                _name = value;
                              });
                            },
                          )),
                      Container(
                          padding: EdgeInsets.only(top: 20.0),
                          child: TextFormField(
                            validator: (value) =>
                                value.isEmpty ? 'Enter Valid E-mail ' : null,
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
                          )),
                      Container(
                          padding: EdgeInsets.only(top: 20.0),
                          child: TextFormField(
                            validator: (value) => value.length < 10
                                ? 'Enter Valid Phone Number '
                                : null,
                            keyboardType: TextInputType.phone,
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
                              hintText: "Phone",
                              prefixIcon: const Icon(
                                Icons.smartphone,
                                color: baseColor,
                              ),
                            ),
                            onChanged: (value) {
                              setState(() {
                                _phone = value;
                              });
                            },
                          )),
                      Container(
                          padding: EdgeInsets.only(top: 20.0),
                          child: TextFormField(
                            validator: (value) => value.length < 6
                                ? 'Too Short (Min 6 Char Long)'
                                : null,
                            style: TextStyle(color: Colors.black),
                            obscureText: passwordVisible,
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
                                borderSide:
                                    BorderSide(color: baseColor, width: 1),
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
                                color: baseColor,
                              ),
                            ),
                            onChanged: (value) {
                              setState(() {
                                _password = value;
                              });
                            },
                          )),
                      Container(
                          padding: EdgeInsets.only(top: 20.0),
                          child: TextFormField(
                            validator: (value) => value != _password
                                ? 'Passwords don\'t Match'
                                : null,
                            style: TextStyle(color: Colors.black),
                            obscureText: passwordVisible1,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(
                                  passwordVisible1
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: baseColor,
                                ),
                                onPressed: () {
                                  setState(() {
                                    passwordVisible1 = !passwordVisible1;
                                  });
                                },
                              ),
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
                              hintText: "Confirm Password",
                              prefixIcon: const Icon(
                                Icons.vpn_key,
                                color: baseColor,
                              ),
                            ),
                          )),
                      Container(
                        padding: EdgeInsets.only(top: 20.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: RaisedButton(
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 48),
                            child: Text(
                              "Register",
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            color: baseColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(8.0)),
                            onPressed: () async {
                              if (_formKey.currentState.validate()) {
                                setState(() {
                                  loading = true;
                                });
                                dynamic result =
                                    await _auth.registerWithEmailandPassword(
                                        email: _email,
                                        password: _password,
                                        name: _name,
                                        phoneNumber: _phone);
                                if (result == null) {
                                  setState(() {
                                    loading = false;
                                    _error = 'Something Went Wrong. Try Again';
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
                              "Already Have a Account ? ",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: 'Product Sans',
                                  color: const Color(0xFF767676)),
                            ),
                            InkWell(
                              onTap: widget.toggleShowSignIn,
                              child: Text(
                                "Sign In",
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
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
