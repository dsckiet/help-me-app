import 'package:flutter/foundation.dart';

class User {
  String idToken, email, expiresIn, uid;
  User(
      {@required this.email,
      @required this.uid,
      @required this.idToken,
      @required this.expiresIn});
}
