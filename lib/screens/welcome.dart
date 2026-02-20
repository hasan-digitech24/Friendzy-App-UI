import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:friendzy_ui_app/screens/botton_nav_bar.dart';
import 'package:friendzy_ui_app/screens/google_sign_in.dart';
import 'package:friendzy_ui_app/utils/app_colors.dart';
import 'package:friendzy_ui_app/widgets/custom_button.dart';

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
              // height: MediaQuery.heightOf(context) / 2,
              height: 0.5.sh,
            ),
            SizedBox(height: 20.h),
            Text(
              "Let's meeting new\npeople around you",
              style: TextStyle(
                fontFamily: 'Hellix',
                fontSize: 28.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 32.h),
            CustomButton(
              text: 'Login with Phone',
              image: 'assets/phone_icon.svg',
              bgcolor: AppColors.primaryColor,
              txtcolor: AppColors.backgroundColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BottomNavigationBarScreen(),
                  ),
                );
              },
            ),
            SizedBox(height: 16.h),
            CustomButton(
              text: 'Login with Google',
              image: 'assets/google_icon.svg',
              bgcolor: AppColors.backgroundColor,
              txtcolor: AppColors.primaryColor,
              onPressed: () async {
                await GoogleSignInService().signInWithGoogle(context);
              },
            ),
            SizedBox(height: 32.h),
            Row(
              mainAxisAlignment: .center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    // color: Color(0xff4B164C),
                  ),
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.lightPink,
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
