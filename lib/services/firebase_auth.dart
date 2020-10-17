import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:help_me/Models/User.dart';
import 'database.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  // To Sign In Using Google
  Future signInWithGoogle() async {
    final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    final AuthResult authResult = await _auth.signInWithCredential(credential);
    final FirebaseUser user = authResult.user;
    return _userFromFireBaseUser(user);
  }

  // To Log Out after Google Sign In
  void signOutGoogle() async {
    await googleSignIn.signOut();
    print("User Sign Out");
  }

  //Get Status of weather user is Logged in or not
  Stream<User> get user {
    return _auth.onAuthStateChanged.map(_userFromFireBaseUser);
    //This Line was same as return _auth.onAuthStateChanged.map((FirebaseUser user)=>_userFromFireBaseUser(user))
  }

  //Convert Firebase User in to Model User
  User _userFromFireBaseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

  //Sign in with Email
  Future signInWithEmailandPassword({String email, String password}) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      return _userFromFireBaseUser(user);
    } catch (e) {
      print(e);
      return null;
    }
  }

  //register with Email Password
  Future registerWithEmailandPassword(
      {String email, String password, String name, String phoneNumber}) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      await DataBaseService(uid: user.uid)
          .updateUserData(phoneNumber: phoneNumber, name: name);
      return _userFromFireBaseUser(user);
    } catch (e) {
      print(e);
      return null;
    }
  }

  //Sign Out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
