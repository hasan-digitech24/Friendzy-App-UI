import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          
          //alignment centre hai jo bhi cheez add krygy wo centre mai add hogi mean centre mai aegi

          alignment: AlignmentGeometry.center,
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/discover_profile6.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 24,
              left: 24,
              child: Container(
                width: 40,
                height: 40,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: BoxBorder.all(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    width: 1,
                  ),
                ),
                child: SvgPicture.asset(
                  'assets/back_icon.svg',
                  color: Colors.white,
                  width: 24,
                  height: 24,
                ),
              ),
            ),
            Positioned(
              right: 24,
              top: 24,
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(32.r),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                  child: Container(
                    // width: 74,
                    // height: 22,
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.22),
                      borderRadius: BorderRadius.circular(32.r),
                      border: Border.all(
                        color: Color.fromRGBO(255, 255, 255, 0.2),
                        width: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/send_icon.svg'),
                        SizedBox(width: 6.w),
                        Text(
                          '2.5 km',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 210,
              // left: 49,
              child: Text(
                'Alfredo Calzoni, 20',
                style: TextStyle(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 265,
              // left: 102,
              child: Text(
                'HAMBURG, GERMANY',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 290,
              // left: 100,
              child: Container(
                padding: EdgeInsets.only(top: 8, bottom: 8, left: 8, right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color.fromRGBO(75, 22, 76, 1),
                  border: Border.all(
                    color: Color.fromRGBO(221, 136, 207, 1),
                    width: 1.5,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: BoxBorder.all(
                          color: Color.fromRGBO(221, 136, 207, 1),
                          width: 3,
                        ),
                      ),
                      child: Text(
                        '80 %',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Text(
                      'Match',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 380,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 16),
                        Center(child: Image.asset('assets/Rounded Rectangle.png')),
                        SizedBox(height: 24),
                    
                        Text(
                          'About',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(171, 168, 175, 1),
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'A good listener. I love having a good talk to know each other’s side 😍.',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 24),
                        Text(
                          'Interest',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(171, 168, 175, 1),
                          ),
                        ),
                        SizedBox(height: 12),
                    
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              
                              padding: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 4,
                              ),
                                          
                              decoration: BoxDecoration(
                                // color: Colors.amber,
                                borderRadius: BorderRadius.circular(32.r),
                                border: Border.all(
                                  color: Color.fromRGBO(224, 213, 224, 1),
                                  width: 1,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Nature',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(75, 22, 76, 1),
                                  ),
                                ),
                              ),
                            ),
                            // SizedBox(width: 12),
                            Container(
                              //  width: 100,
                              // height: 40,
                              padding: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 4,
                              ),
                                          
                              decoration: BoxDecoration(
                                // color: Colors.amber,
                                borderRadius: BorderRadius.circular(32.r),
                                border: Border.all(
                                  color: Color.fromRGBO(224, 213, 224, 1),
                                  width: 1,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Travel',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(75, 22, 76, 1),
                                  ),
                                ),
                              ),
                            ),
                            // SizedBox(width: 12),
                            Container(
                              //  width: 100,
                              // height: 40,
                              padding: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 4,
                              ),
                                          
                              decoration: BoxDecoration(
                                // color: Colors.amber,
                                borderRadius: BorderRadius.circular(32.r),
                                border: Border.all(
                                  color: Color.fromRGBO(224, 213, 224, 1),
                                  width: 1,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Writing',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(75, 22, 76, 1),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              // width: 100,
                              // height: 40,
                              padding: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 4,
                              ),
                                          
                              decoration: BoxDecoration(
                                // color: Colors.amber,
                                borderRadius: BorderRadius.circular(32.r),
                                border: Border.all(
                                  color: Color.fromRGBO(224, 213, 224, 1),
                                  width: 1,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Photography',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(75, 22, 76, 1),
                                  ),
                                ),
                              ),
                            ),
                            // SizedBox(width: 12),
                            Container(
                              //  width: 100,
                              // height: 40,
                              padding: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(221, 136, 207, 1),
                                borderRadius: BorderRadius.circular(32.r),
                                border: Border.all(
                                  color: Color.fromRGBO(224, 213, 224, 1),
                                  width: 1,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Music',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(75, 22, 76, 1),
                                  ),
                                ),
                              ),
                            ),
                            // SizedBox(width: 12),
                            Container(
                              //  width: 100,
                              // height: 40,
                              padding: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 4,
                              ),
                                          
                              decoration: BoxDecoration(
                                // color: Colors.amber,
                                borderRadius: BorderRadius.circular(32.r),
                                border: Border.all(
                                  color: Color.fromRGBO(224, 213, 224, 1),
                                  width: 1,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Football',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(75, 22, 76, 1),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: Container(
                            width: 248,
                            height: 72,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.r),
                              color: Color.fromRGBO(249, 248, 249, 1)
                              // color: Colors.amber
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                                          // SizedBox(width: 8),
                                Container(
                                  width: 56,
                                  height: 56,
                                  padding: EdgeInsets.all(14),
                                  decoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle),
                                  child: SvgPicture.asset('assets/cross_icon.svg'),
                                ),
                                // SizedBox(width: 32),
                                 Container(
                                  width: 56,
                                  height: 56,
                                   padding: EdgeInsets.all(14),
                                                      
                                  decoration: BoxDecoration(color: Color.fromRGBO(75, 22, 76, 1),shape: BoxShape.circle),
                                  child: SvgPicture.asset('assets/star_icon.svg'),
                                ),
                                // SizedBox(width: 32),
                                 Container(
                                  width: 56,
                                  height: 56,
                                  padding: EdgeInsets.all(14),
                                                      
                                  decoration: BoxDecoration(color: Color.fromRGBO(221, 136, 207, 1),shape: BoxShape.circle),
                                  child: SvgPicture.asset('assets/like.svg'),
                                ),
                              ],),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
