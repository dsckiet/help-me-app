import 'package:help_me/services/firebase_api_key.dart';

class FirebaseApi{
  static String s;

  Uri uri(s) => Uri(
    scheme: 'https',
    host: 'identitytoolkit.googleapis.com',
    path: 'v1/accounts$s',
    queryParameters: {'key':firebase_api_key}
  );
}