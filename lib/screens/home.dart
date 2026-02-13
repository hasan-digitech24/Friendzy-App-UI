import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:friendzy_ui_app/screens/matches.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, String>> profileAndStories = [
    {"image": "assets/profile_image.png", "name": "My Story"},
    {"image": "assets/story1.png", "name": "Selena"},
    {"image": "assets/story2.png", "name": "Clara"},
    {"image": "assets/story3.png", "name": "Fabian"},
    {"image": "assets/story4.png", "name": "Alex"},
    {"image": "assets/discover_profile1.jpg", "name": "Halima"},
  ];


String selectedValue = 'make friends';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(253, 247, 253, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 14.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Friendzy",
                      style: TextStyle(
                        fontFamily: 'Hellix',
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff4B164C),
                      ),
                    ),
                    // SizedBox(width: 180.h),
                    Container(
                      width: 48.w,
                      height: 48.h,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: BoxBorder.all(
                          color: const Color.fromARGB(255, 243, 237, 237),
                          width: 2,
                        ),
                      ),
                      child: SvgPicture.asset('assets/notification_icon.svg'),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                SizedBox(
                  height: 94,
                  // listview.separated isliay use kiya hai hr item ky beech mai sizedbox thora gap dena tha, listview builder hi ki tarha hai bs ismy separator builder hai separte krny ky liay hr item ko
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: profileAndStories.length,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 20.w);
                    },
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 60.h,
                                  height: 60.h,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: ClipOval(
                                    child: Image.asset(
                                      profileAndStories[index]['image']!,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  bottom: 0,
                                  child: Container(
                                    width: 16,
                                    height: 16,
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromRGBO(221, 136, 207, 1),
                        
                                      border: BoxBorder.all(
                                        color: const Color.fromARGB(
                                          255,
                                          243,
                                          237,
                                          237,
                                        ),
                                        width: 2,
                                      ),
                                    ),
                                    child: SvgPicture.asset(
                                      'assets/add_profile_icon.svg',
                                      fit: .cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              profileAndStories[index]['name']!,
                              style: TextStyle(
                                fontFamily: 'Hellix',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        );
                      } else {
                        return SizedBox(
                          width: 64,
                          child: Column(
                            children: [
                              Container(
                                width: 64.h,
                                height: 64.h,
                                padding: EdgeInsets.all(2),
                          
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                          
                                  border: BoxBorder.all(
                                    color: const Color.fromRGBO(255, 150, 213, 1),
                                    width: 2,
                                  ),
                                ),
                                child: ClipOval(
                                  child: Image.asset(
                                    profileAndStories[index]['image']!,
                                    fit: .cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 6),
                          
                              Text(
                                profileAndStories[index]['name']!,
                                /* max line or overflow jb use krygy jb text bara ho tou wo aik line mai aae, overflow isliay max line 1 kri hi
                                 tou overflow hojaega taxt error aega, overflow property use kry .ellipses line mai width ky according jitna text aega shi hai
                                  baki dots show kryga overflow error nhi aega */
                                maxLines: 1,
                                overflow: .ellipsis,
                                style: TextStyle(
                                  fontFamily: 'Hellix',
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                    },
                  ),
                ),
                SizedBox(height: 24.h),
            
                CupertinoSlidingSegmentedControl(
                  backgroundColor: Color.fromRGBO(248, 231, 246, 1),
                  groupValue: selectedValue,
                  onValueChanged: (value) {
                   
                    setState(() {
                      selectedValue = value!;
                    });
            
                    //  if( value == 'search partners'){
                    //   Navigator.push(context, MaterialPageRoute(builder: (context)=>MatchesScreen()));
                    // }
                  },
                  children: {
                    'make friends' : Text('Make Friends',
                          style: TextStyle(
                            fontFamily: 'Hellix',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(75, 22, 76, 1),
                          ),),
                           'search partners' : Text('Search Partners',
                          style: TextStyle(
                            fontFamily: 'Hellix',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(75, 22, 76, 1),
                          ),)
                  },
                 
                ),
            
               
                SizedBox(height: 24.h),
            
                // feed/posts container
                Column(
                  children: [
                    Container(
                      width: 343.w,
                      height: 343.h,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        // color: Colors.red,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Image.asset(
                              'assets/post1.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            left: 16,
                            top: 16,
                            child: Container(
                              width: 90.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(180, 183, 193, 1),
                                borderRadius: BorderRadius.circular(32),
                              ),
                              child: Center(
                                child: Text(
                                  'Travel',
                                  style: TextStyle(
                                    fontFamily: 'Hellix',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 16,
                            bottom: 72,
                            child: Text(
                              'If you could live anywhere\n in the world, where would\n you pick?',
                              style: TextStyle(
                                fontFamily: 'Hellix',
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 16,
                            bottom: 16,
                            // top: 287,
                            child: Container(
                              // color: Colors.white,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                      'assets/post1_image.png',
                                    ),
                                  ),
                                  SizedBox(width: 12.h),
                                  Column(
                                    children: [
                                      Text(
                                        'Miranda Kehlani',
                                        style: TextStyle(
                                          fontFamily: 'Hellix',
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'STUTTGART',
                                        style: TextStyle(
                                          fontFamily: 'Hellix',
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            top: 75,
                            bottom: 84,
                            child: ClipRRect(
                              borderRadius: BorderRadiusGeometry.circular(
                                40.r,
                              ),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaX: 12,
                                  sigmaY: 12,
                                ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.22),
                                    borderRadius: BorderRadius.circular(40.r),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 40.w,
                                        height: 40.h,
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(
                                            225,
                                            225,
                                            227,
                                            1,
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                        child: SvgPicture.asset(
                                          'assets/like_icon.svg',
                                        ),
                                      ),
                                      SizedBox(height: 12.h),
                                      Container(
                                        width: 40.w,
                                        height: 40.h,
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(
                                            225,
                                            225,
                                            227,
                                            1,
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                        child: SvgPicture.asset(
                                          'assets/comment_icon.svg',
                                        ),
                                      ),
                                      SizedBox(height: 12.h),
                                      Container(
                                        width: 40.w,
                                        height: 40.h,
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(
                                            225,
                                            225,
                                            227,
                                            1,
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                        child: SvgPicture.asset(
                                          'assets/dots_icon.svg',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                              
                    // 2nd post
                    Container(
                      width: 343.w,
                      height: 343.h,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        // color: Colors.red,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Image.asset(
                              'assets/post1.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            left: 16,
                            top: 16,
                            child: Container(
                              width: 90.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(180, 183, 193, 1),
                                borderRadius: BorderRadius.circular(32),
                              ),
                              child: Center(
                                child: Text(
                                  'Travel',
                                  style: TextStyle(
                                    fontFamily: 'Hellix',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 16,
                            bottom: 72,
                            child: Text(
                              'If you could live anywhere\n in the world, where would\n you pick?',
                              style: TextStyle(
                                fontFamily: 'Hellix',
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 16,
                            bottom: 16,
                            // top: 287,
                            child: Container(
                              // color: Colors.white,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                      'assets/post1_image.png',
                                    ),
                                  ),
                                  SizedBox(width: 12.h),
                                  Column(
                                    children: [
                                      Text(
                                        'Miranda Kehlani',
                                        style: TextStyle(
                                          fontFamily: 'Hellix',
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'STUTTGART',
                                        style: TextStyle(
                                          fontFamily: 'Hellix',
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            top: 75,
                            bottom: 84,
                            child: ClipRRect(
                              borderRadius: BorderRadiusGeometry.circular(
                                40.r,
                              ),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaX: 12,
                                  sigmaY: 12,
                                ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.22),
                                    borderRadius: BorderRadius.circular(40.r),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 40.w,
                                        height: 40.h,
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(
                                            225,
                                            225,
                                            227,
                                            1,
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                        child: SvgPicture.asset(
                                          'assets/like_icon.svg',
                                        ),
                                      ),
                                      SizedBox(height: 12.h),
                                      Container(
                                        width: 40.w,
                                        height: 40.h,
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(
                                            225,
                                            225,
                                            227,
                                            1,
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                        child: SvgPicture.asset(
                                          'assets/comment_icon.svg',
                                        ),
                                      ),
                                      SizedBox(height: 12.h),
                                      Container(
                                        width: 40.w,
                                        height: 40.h,
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(
                                            225,
                                            225,
                                            227,
                                            1,
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                        child: SvgPicture.asset(
                                          'assets/dots_icon.svg',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
