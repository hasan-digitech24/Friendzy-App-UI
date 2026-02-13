import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:friendzy_ui_app/screens/botton_nav_bar.dart';
import 'package:friendzy_ui_app/screens/google_sign_in.dart';
import 'package:google_sign_in/google_sign_in.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //figma sai agr dekhy tou height 108 hogi lekin phr scroll lgana pryga isliay height km di hai.
            // SizedBox(height: 64),
            Image.asset(
              'assets/welcome_screen_image.png',
              width: 311,
              height: MediaQuery.heightOf(context)/2,
            ),
            SizedBox(height: 20),
            Text(
              "Let's meeting new\npeople around you",
              style: TextStyle(fontFamily: 'Hellix',fontSize: 28, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff4B164C),
                  minimumSize: Size(MediaQuery.widthOf(context), 56),
                  padding: EdgeInsets.only(left: 8)
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigationBarScreen()));
                },
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      width: 40,height: 40,decoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle)
                      ,child: SvgPicture.asset('assets/phone_icon.svg')),
                    SizedBox(width: 37),
        
                    Text(
                      'Login with Phone',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(252, 243, 250, 1),
                  minimumSize: Size(MediaQuery.widthOf(context), 56),
                  padding: EdgeInsets.only(left: 8)
        
                ),
                onPressed: () async{
                  await GoogleSignInService().signInWithGoogle(context);
                 


                },
                child: Row(
                  children: [
                    Container(padding: EdgeInsets.all(8),
                      width: 40,height: 40,decoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle)
                      ,child: SvgPicture.asset('assets/google_icon.svg')),
                    SizedBox(width: 37),
                    Text(
                      'Login with Google',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff4B164C),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    // color: Color(0xff4B164C),
                  ),
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(225, 151, 213, 1),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Future<UserCredential> signInWithGoogle() async {
//   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

//   final GoogleSignInAuthentication googleAuth =
//       await googleUser!.authentication;

//   final credential = GoogleAuthProvider.credential(
//     accessToken: googleAuth.accessToken,
//     idToken: googleAuth.idToken,
//   );

//   return await FirebaseAuth.instance.signInWithCredential(credential);
// }