import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //figma sai agr dekhy tou height 108 hogi lekin phr scroll lgana pryga isliay height km di hai.
          SizedBox(height: 48),
          Image.asset(
            'assets/welcome_screen_image.png',
            width: 311,
            height: 306,
          ),
          SizedBox(height: 66),
          Text(
            "Let's meeting new\npeople around you",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff4B164C),
                minimumSize: Size(295, 56),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Image.asset('assets/phone_icon.png'),
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
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Image.asset('assets/google_icon.png'),
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
          SizedBox(height: 48),
        ],
      ),
    );
  }
}
