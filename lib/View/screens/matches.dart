import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:friendzy_ui_app/View/screens/connect.dart';
import 'package:go_router/go_router.dart';

class MatchesScreen extends StatelessWidget {
  MatchesScreen({super.key});

  // List gridImages = [
  //   'assets/discover_profile1.jpg',
  //   'assets/discover_profile2.jpg',
  //   'assets/discover_profile3.jpg',
  //   'assets/discover_profile4.jpg',
  //   'assets/discover_profile5.jpg',
  //   'assets/discover_profile6.jpg',
  // ];

  List<Map<String,String>> userPosts = [
    {
      "image": "assets/discover_profile1.jpg",
      "distance": "1.6 km away",
      "name": "Halima, 19", 
      "city": "BERLIN"
    },
     {
      "image": "assets/discover_profile2.jpg",
      "distance": "1.3 km away",
      "name": "vanessa, 18", 
      "city": "MUNICH"
    },
     {
      "image": "assets/discover_profile3.jpg",
      "distance": "9.4 km away",
      "name": "James, 20", 
      "city": "HANOVER"
    },
     {
      "image": "assets/discover_profile4.jpg",
      "distance": "18.6 km away",
      "name": "Eddie, 23", 
      "city": "DORTMUND"
    },
     {
      "image": "assets/discover_profile5.jpg",
      "distance": "11.5 km away",
      "name": "Brandon, 21", 
      "city": "VENICE"
    },
     {
      "image": "assets/discover_profile6.jpg",
      "distance": "73 km away",
      "name": "Alfredo, 22", 
      "city": "ITALY"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: BoxBorder.all(
                          color: const Color.fromARGB(255, 243, 237, 237),
                          width: 2,
                        ),
                      ),
                      child: SvgPicture.asset(
                        'assets/back_icon.svg',
                        width: 24,
                        height: 24,
                      ),
                    ),
                    // SizedBox(width: 76),
                    Text(
                      'Matches',
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    // SizedBox(width: 84),

                    Container(
                      width: 40,
                      height: 40,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: BoxBorder.all(
                          color: const Color.fromARGB(255, 243, 237, 237),
                          width: 2,
                        ),
                      ),
                      child: SvgPicture.asset(
                        'assets/filter.svg',
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    Container(
                      width: 64,
                      height: 92,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentGeometry.center,
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: BoxBorder.all(
                                    color: const Color.fromRGBO(
                                      221,
                                      136,
                                      207,
                                      1,
                                    ),
                                    width: 2,
                                  ),
                                ),
                                child: ClipOval(
                                  child: ImageFiltered(
                                    imageFilter: ImageFilter.blur(
                                      sigmaX: 2,
                                      sigmaY: 2,
                                    ),
                                    child: Image.asset(
                                      'assets/profile_image.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // right: 16,
                                // bottom: 16,
                                // top: 16,
                                // left: 16,
                                child: SvgPicture.asset('assets/like.svg'),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Like ',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                '32',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(221, 136, 207, 1),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 20.w),
                    Container(
                      width: 72,
                      height: 92,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentGeometry.center,
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: BoxBorder.all(
                                    color: const Color.fromRGBO(
                                      221,
                                      136,
                                      207,
                                      1,
                                    ),
                                    width: 2,
                                  ),
                                ),
                                child: ClipOval(
                                  child: ImageFiltered(
                                    imageFilter: ImageFilter.blur(
                                      sigmaX: 2,
                                      sigmaY: 2,
                                    ),
                                    child: Image.asset(
                                      'assets/story2.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // right: 16,
                                // bottom: 16,
                                // top: 16,
                                // left: 16,
                                child: SvgPicture.asset(
                                  'assets/comment_icon.svg',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                     mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Text(
                                'Connect ',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                '15',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(221, 136, 207, 1),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10.w),
                    ElevatedButton(style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(221, 136, 207, 1),
                      shadowColor: Color.fromRGBO(75, 22, 76, 1),
                      minimumSize: Size(60,30),
                      padding: EdgeInsets.all(8)
                    ),onPressed: (){
                          context.push('/connect');
                    }, child: Text('Connect Clara',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),))
                  ],
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    Text(
                      'Your Matches ',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(75, 22, 76, 1),
                      ),
                    ),
                    Text(
                      '47',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(221, 136, 207, 1),
                      ),
                    ),
                  ],
                ),
                                SizedBox(height: 24),


                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.4 / 0.6,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: userPosts.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color.fromRGBO(221, 136, 207, 1),
                          width: 4,
                        ),
                        image: DecorationImage(
                          image: AssetImage(userPosts[index]['image']!),
                          fit: BoxFit.cover
                        ),
                      ),
                      child: Stack(
                        alignment: AlignmentGeometry.center,
                        children: [
                          Positioned(
                            // left: 32,
                            // right: 32,
                            top: 0,
                            child: Container(
                              // width: 92,
                              // height: 24,
                              padding: EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(16.r),
                                  bottomRight: Radius.circular(16.r)
                                ),
                                color: Color.fromRGBO(221, 136, 207, 1),
                              ),
                              child: Text(
                                '100% Match',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                           Positioned(
                                // right: 45,
                                top: 148,
                                // left: 30,
                                child: ClipRRect(
                                  borderRadius: BorderRadiusGeometry.circular(32.r),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 12,
                                      sigmaY: 12,
                                    ),
                                    child: Container(
                                  // width: 74,
                                  // height: 22,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 4,vertical: 4
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.22),
                                        borderRadius: BorderRadius.circular(32.r),
                                        border: Border.all(color: Color.fromRGBO(255, 255, 255, 0.2),
                                    width: 1)
                                        
                                      ),
                                      child:  Text(
                                      userPosts[index]['distance']!,
                                      style: TextStyle(
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w600,color: Colors.white
                                      ),
                                    ),
                                    ),
                                  ),
                                ),
                              ),
                               Positioned(
                                // right: 36,
                                top: 174,
                                // left: 36,
                                child: Text(
                                userPosts[index]['name']!,
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,color: Colors.white
                                ),
                                                              ),
                              ),
                               Positioned(
                                // right: 50,
                                top: 202,
                                // left: 50,
                                child: Text(
                                userPosts[index]['city']!,
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w400,color: Colors.white
                                ),
                                                              ),
                              ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
