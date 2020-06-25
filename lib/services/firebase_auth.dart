import 'dart:convert';

import 'package:help_me/models/user_model.dart';
import 'package:help_me/services/firebase_api.dart';
import 'package:http/http.dart' as http;

class FirebaseAuthService{
  //TODO: add functions to sign in with google and email
  FirebaseApi api = FirebaseApi();

  //signUp with email and password
  Future<User> signUpWithEmail({String email, String password}) async {
    try {
      final response = await http.post(api.uri(':signUp').toString(), body: {
        "email": "$email",
        "password": "$password",
        "returnSecureToken": "true"
      });
      if (response.statusCode == 200) {
        final user = jsonDecode(response.body);
        return User(
            email: user['email'],
            uid: user['localId'],
            idToken: user['idToken'],
            expiresIn: user['expiresIn']);
      }
    } catch (error) {
      print(error);
    }
    return null;
  }
}