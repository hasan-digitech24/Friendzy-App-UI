import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:friendzy_ui_app/widgets/add_story_btn.dart';
import 'package:friendzy_ui_app/widgets/header_section.dart';
import 'package:friendzy_ui_app/widgets/horizontal_list.dart';
import 'package:friendzy_ui_app/widgets/story_widget.dart';

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
                HeaderSection(),
                SizedBox(height: 16.h),
                HorizontalList(
                  spacing: 20.w,
                  padding: EdgeInsets.zero,
                  itemCount: profileAndStories.length,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return AddStoryBtn(
                        image: profileAndStories[index]['image']!,
                        name: profileAndStories[index]['name']!,
                      );
                    } else {
                      return StoryWidget(
                        image: profileAndStories[index]['image']!,
                        name: profileAndStories[index]['name']!,
                      );
                    }
                  },
                ),
                SizedBox(height: 24.h),

                CupertinoSlidingSegmentedControl(
                  backgroundColor: Color.fromRGBO(248, 231, 246, 1),
                  groupValue: selectedValue,
                  onValueChanged: (value) {
                    setState(() {
                      selectedValue = value!;
                    });
                  },
                  children: {
                    'make friends': Text(
                      'Make Friends',
                      style: TextStyle(
                        fontFamily: 'Hellix',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(75, 22, 76, 1),
                      ),
                    ),
                    'search partners': Text(
                      'Search Partners',
                      style: TextStyle(
                        fontFamily: 'Hellix',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(75, 22, 76, 1),
                      ),
                    ),
                  },
                ),

                SizedBox(height: 24.h),

                // feed/posts container
                Column(
                  children: [
                    Container(
                      height: 343.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        image: DecorationImage(
                          image: AssetImage('assets/post1.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.w,
                              vertical: 16.h,
                            ),
                            child: Column(
                              crossAxisAlignment: .start,
                              children: [
                                GlassedChip(text: 'Travel'),
                                const Spacer(flex: 4),
                                Text(
                                  'If you could live anywhere\nin the world, where would\nyou pick?',
                                  style: TextStyle(
                                    fontFamily: 'Hellix',
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                                const Spacer(flex: 1),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                        'assets/post1_image.png',
                                      ),
                                    ),
                                    SizedBox(width: 12.h),
                                    Column(
                                      crossAxisAlignment: .start,
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
                              ],
                            ),
                          ),
                          Align(
                            alignment: .centerRight,
                            child: ClipRRect(
                              borderRadius: BorderRadiusGeometry.circular(40.r),
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
                                    mainAxisSize: .min,
                                    children: [
                                      Container(
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
                              borderRadius: BorderRadiusGeometry.circular(40.r),
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

class GlassedChip extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  const GlassedChip({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: Color.fromRGBO(180, 183, 193, 1),
        borderRadius: BorderRadius.circular(32),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Hellix',
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
