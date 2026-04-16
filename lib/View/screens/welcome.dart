import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:friendzy_ui_app/Controller/google_signin_provider.dart';
import 'package:friendzy_ui_app/View/utils/app_colors.dart';
import 'package:friendzy_ui_app/View/widgets/custom_button.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends ConsumerWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

  // ref.listen automatically jb jb run hota hai jb jb state change hoti hai, jitni dafa state change hogi utni dafa ye listen karega, aur jb jb state change hogi to ye callback function run hoga, jisme previous state aur next state milega.
  // previous jo hai wo previous state ko represent karta hai, aur next jo hai wo next state ko represent karta hai. to jb jb state change hogi to ye callback function run hoga, aur isme previous state aur next state milega. to hum isme next state ko check karenge ki kya user null hai ya nahi, agar user null nahi hai to hum home screen pe navigate karenge, aur agar user null hai to hum kuch nahi karenge.

  //// 🔄 SIMPLE FLOW (Riverpod + Google Login):
// Button press hota hai → hum ref.read(...).signInWithGoogle() call karte hain (sirf process start hota hai)
// Notifier ke andar state change hoti hai:
//   null → loading → data(user) / error
// Jab state change hoti hai:
//   ref.listen automatically run hota hai (yeh side effects ke liye hota hai, jaise navigation)
//   → agar data(user) aaye to home screen pe navigate karte hain
//   → agar error aaye to message show karte hain
// UI ke liye ref.watch use hota hai:
//   → jab state change hoti hai UI rebuild hoti hai
//   → when() decide karta hai kya dikhana hai (loading, data, ya error)
// IMPORTANT:
//   read = action call
//   watch = UI update
//   listen = navigation / side effects


// 🔥 ref.listen DETAIL EXPLANATION:
//
// ref.listen provider ki STATE CHANGE ko observe karta hai
// Jab bhi state change hoti hai (null → loading → data / error),
// yeh function AUTOMATICALLY run hota hai (hume manually call nahi karna hota)
//
// ref.listen(provider, (previous, next))
//
// previous = purani state (pehle kya value thi)
// next = nayi state (ab kya value hai)
//
// Example flow Google login ka:
// Step 1: initial state
//   previous = null
//   next = null
//
// Step 2: jab login start hota hai
//   state = AsyncLoading()
//   previous = null
//   next = loading
//   → yahan loading wala block run hota hai
//
// Step 3: jab login success hota hai
//   state = AsyncData(user)
//   previous = loading
//   next = data(user)
//   → yahan data wala block run hota hai (yahan navigation karte hain)
//
// Step 4: agar error aaye
//   state = AsyncError(error)
//   previous = loading
//   next = error
//   → yahan error wala block run hota hai (yahan error show karte hain)
//
// IMPORTANT:
// - ref.listen har state change pe run hota hai (ek login me 2-3 dafa chal sakta hai)
// - isko side effects ke liye use karte hain:
//     → navigation (screen change)
//     → snackbar / error message
// - UI dikhane ke liye ref.watch + when() use hota hai (listen nahi)
//
// SHORT:
// state change → ref.listen run → hum action lete hain (navigate, show error)

     ref.listen(googleSignInProvider, (previous, next) {
      next.when(
        data: (user) {
          if (user != null) {
            context.go('/bottom_navigation_bar'); 
          }
        },
        error: (error, stack) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(error.toString())),
          );
        },
        loading: () => CircularProgressIndicator(),
      );
    });

    final googleProvider = ref.watch(googleSignInProvider);

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
                context.push('/bottom_navigation_bar');
              },
            ),
            SizedBox(height: 16.h),
            CustomButton(
              text: 'Login with Google',
              image: 'assets/google_icon.svg',
              bgcolor: AppColors.backgroundColor,
              txtcolor: AppColors.primaryColor,
              onPressed: () async {
                // await GoogleSignInService().signInWithGoogle(context);
                await ref.read(googleSignInProvider.notifier).signInWithGoogle();
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


