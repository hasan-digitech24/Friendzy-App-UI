import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';


final googleSignInProvider = AsyncNotifierProvider<GoogleSignInService, User?>(GoogleSignInService.new);


class GoogleSignInService extends AsyncNotifier<User?> {

    @override
  FutureOr<User?> build() {
    // TODO: implement build
   return null;
  }
  
  final FirebaseAuth _auth = FirebaseAuth.instance;

  static const String webClientId =
      "211744902089-v77d4f91l47egjfv64aalb23g9v8iih4.apps.googleusercontent.com";

  /// initialize (required in v7+)
  Future<void> _initialize() async {
    await GoogleSignIn.instance.initialize(serverClientId: webClientId);
  }

  /// sign in
  // Future<User?> signInWithGoogle() async {
  //   try {
  //     await _initialize();

  //     final googleUser = await GoogleSignIn.instance.authenticate();

  //     final idToken = googleUser.authentication.idToken;

  //     final credential = GoogleAuthProvider.credential(idToken: idToken);

  //     final userCredential = await _auth.signInWithCredential(credential);

  //     // return userCredential.user;
  //     if (userCredential.user != null) {
  //       return userCredential.user;
        
  //     } else {
  //       throw Exception("Google Sign-In failed");
  //     }
  //   } catch (e) {
  //     print("Google Sign-In Error: $e");
  //     return null;
  //   }
  // }


// sign in
  Future<void> signInWithGoogle() async {
  state = const AsyncLoading();

// AsyncValue.guard shortcut method hai jo khud hi success or error manage krta hai aur state ko accordingly update krta hai, agar koi error aata hai to wo error ko catch krke state ko AsyncError me convert kr deta hai, aur agar sab kuch sahi hota hai to state ko AsyncData me convert kr deta hai.
// same work as try catch block but yay easy hai.
// 🔥 AsyncValue.guard:
// yeh ek helper function hai jo async code ko handle karta hai
//
// state = await AsyncValue.guard(() async {
//   // login code
// });
//
// yeh automatically:
//   ✅ success → AsyncData(data) bana deta hai
//   ❌ error → AsyncError(error) bana deta hai
//
// yani hume try-catch manually likhne ki zaroorat nahi hoti

  state = await AsyncValue.guard(() async {
    await _initialize();

    final googleUser = await GoogleSignIn.instance.authenticate();

    final idToken = googleUser.authentication.idToken;

    final credential = GoogleAuthProvider.credential(idToken: idToken);

    final userCredential =
        await _auth.signInWithCredential(credential);

    return userCredential.user;
  });
}

  /// sign out
  Future<void> signOut() async {
    await GoogleSignIn.instance.signOut();
    await _auth.signOut();
  }


}
