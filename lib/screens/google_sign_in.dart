
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:friendzy_ui_app/screens/botton_nav_bar.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  static const String webClientId =
      "211744902089-v77d4f91l47egjfv64aalb23g9v8iih4.apps.googleusercontent.com";

  /// initialize (required in v7+)
  Future<void> _initialize() async {
    await GoogleSignIn.instance.initialize(
      serverClientId: webClientId,
    );
  }

  /// sign in
  Future<User?> signInWithGoogle(BuildContext context) async {
    try {
      await _initialize();

      final googleUser =
          await GoogleSignIn.instance.authenticate();


      final idToken = googleUser.authentication.idToken;

      final credential = GoogleAuthProvider.credential(
        idToken: idToken,
      );

      final userCredential =
          await _auth.signInWithCredential(credential);

      Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigationBarScreen()));
      return userCredential.user;
    } catch (e) {
      print("Google Sign-In Error: $e");
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Check your connection')));
      return null;
    }
  }

  /// sign out
  Future<void> signOut() async {
    await GoogleSignIn.instance.signOut();
    await _auth.signOut();
  }
}



