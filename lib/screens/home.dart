import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(253, 247, 253, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 8),
              Container(
                width: 343,
                height: 48,
                // decoration: BoxDecoration(color: Colors.amber),
                child: Row(
                  children: [
                    Text(
                      "Friendzy",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff4B164C),
                      ),
                    ),
                    SizedBox(width: 180),
                    Container(
                      width: 40,
                      height: 40,
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: BoxBorder.all(
                          color: const Color.fromARGB(255, 243, 237, 237),
                          width: 2,
                        ),
                      ),
                      child: SvgPicture.asset(
                        'assets/notification_icon.svg',
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 88,
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,

                                  border: BoxBorder.all(
                                    color: const Color.fromARGB(
                                      255,
                                      243,
                                      237,
                                      237,
                                    ),
                                    width: 4,
                                  ),
                                ),
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/profile_image.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 0,
                                bottom: 0,
                                child: Container(
                                  width: 20,
                                  height: 20,
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
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            'My Story',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 60,
                      height: 88,
                      child: Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
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
                                'assets/story1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 6),

                          Text(
                            'Selena',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 60,
                      height: 88,
                      child: Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
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
                                'assets/story2.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 6),

                          Text(
                            'Clara',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 60,
                      height: 88,
                      child: Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
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
                                'assets/story3.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 6),

                          Text(
                            'Fabian',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 60,
                      height: 88,
                      child: Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
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
                                'assets/story4.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 6),

                          Text(
                            'Alex',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(width: 20),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Container(
                width: 343,
                height: 44,
                padding: EdgeInsets.only(top: 4, bottom: 4, left: 4),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(248, 231, 246, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 160,
                      height: 36,
                      padding: EdgeInsets.symmetric(
                        horizontal: 34,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'Make Friends',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(75, 22, 76, 1),
                        ),
                      ),
                    ),
                    SizedBox(width: 35),
                    Text(
                      'Search Partners',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(75, 22, 76, 1),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),

              // feed/posts container
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: 343,
                        height: 343,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                            Image.asset('assets/post1.png'),
                            Positioned(
                              left: 16,
                              top: 16,
                              child: Container(
                                width: 90,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(180, 183, 193, 1),
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                child: Center(
                                  child: Text(
                                    'Travel',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 16,
                              top: 199,
                              child: Text(
                                'If you could live anywhere\n in the world, where would\n you pick?',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 16,
                              top: 287,
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
                                    SizedBox(width: 12),
                                    Column(
                                      children: [
                                        Text(
                                          'Miranda Kehlani',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          'STUTTGART',
                                          style: TextStyle(
                                            fontSize: 11,
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
                                borderRadius: BorderRadiusGeometry.circular(40),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 12,
                                    sigmaY: 12,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.22),
                                      borderRadius: BorderRadius.circular(40),
                                      
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(height: 20),

                                        Container(
                                          width: 40,
                                          height: 40,
                                          padding: EdgeInsets.all(8),
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
                                        SizedBox(height: 12),
                                        Container(
                                          width: 40,
                                          height: 40,
                                          padding: EdgeInsets.all(8),
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
                                        SizedBox(height: 12),
                                        Container(
                                          width: 40,
                                          height: 40,
                                          padding: EdgeInsets.all(8),
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
                      SizedBox(height: 10),
                      // 2nd post
                      Container(
                        width: 343,
                        height: 343,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/post1.png',
                              fit: BoxFit.fitWidth,
                            ),
                            Positioned(
                              left: 16,
                              top: 16,
                              child: Container(
                                width: 90,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(180, 183, 193, 1),
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                child: Center(
                                  child: Text(
                                    'Football',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 16,
                              top: 199,
                              child: Text(
                                'If you could live anywhere\n in the world, where would\n you pick?',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 16,
                              top: 287,
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
                                    SizedBox(width: 12),
                                    Column(
                                      children: [
                                        Text(
                                          'Chris Alicia',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          'STUTTGART',
                                          style: TextStyle(
                                            fontSize: 11,
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
                                borderRadius: BorderRadiusGeometry.circular(40),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 12,
                                    sigmaY: 12,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.22),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(height: 20),

                                        Container(
                                          width: 40,
                                          height: 40,
                                          padding: EdgeInsets.all(8),
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
                                        SizedBox(height: 12),
                                        Container(
                                          width: 40,
                                          height: 40,
                                          padding: EdgeInsets.all(8),
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
                                        SizedBox(height: 12),
                                        Container(
                                          width: 40,
                                          height: 40,
                                          padding: EdgeInsets.all(8),
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
                ),
              ),
            ],
          ),
        ),
      ),

    
    
    );
  }
}
