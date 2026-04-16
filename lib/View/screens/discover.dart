import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:latlong2/latlong.dart';

class DiscoverScreen extends StatelessWidget {
  DiscoverScreen({super.key});

  @override
  List<Map<String, String>> discoverSCreenData = [
    {
      "image": "assets/discover_profile1.jpg",
      "distance": "1.6 km away",
      "name": "Halima, 19",
      "city": "BERLIN",
    },
    {
      "image": "assets/discover_profile2.jpg",
      "distance": "1.3 km away",
      "name": "vanessa, 18",
      "city": "MUNICH",
    },
    {
      "image": "assets/discover_profile3.jpg",
      "distance": "9.4 km away",
      "name": "James, 20",
      "city": "HANOVER",
    },
    {
      "image": "assets/discover_profile4.jpg",
      "distance": "18.6 km away",
      "name": "Eddie, 23",
      "city": "DORTMUND",
    },
    {
      "image": "assets/discover_profile5.jpg",
      "distance": "11.5 km away",
      "name": "Brandon, 21",
      "city": "VENICE",
    },
    {
      "image": "assets/discover_profile6.jpg",
      "distance": "73 km away",
      "name": "Alfredo, 22",
      "city": "ITALY",
    },
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 12),
                Row(
                  children: [
                    SvgPicture.asset('assets/location.svg'),
                    SizedBox(width: 4.w),
                    Text(
                      'Germany',
                      style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 4.w),
            
                    SvgPicture.asset('assets/arrow.svg'),
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Discover',
                      style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(width: 137.w),
            
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
                        'assets/search.svg',
                        width: 24,
                        height: 24,
                      ),
                    ),
                    SizedBox(width: 8.w),
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
                SizedBox(height: 16),
                SizedBox(
                  height: 160,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: discoverSCreenData.length,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 12.w);
                    },
                    itemBuilder: (context, index) {
                      return Container(
                        width: 105,
                        height: 160,
                        // child widget parent ki shape follow kryga clipbehaviour deny sai
                        clipBehavior: Clip.hardEdge,
                        // color: Colors.amber,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Image.asset(
                                discoverSCreenData[index]['image']!,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              left: 8,
                              top: 8,
                              child: Container(
                                width: 41,
                                height: 22,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(75, 22, 76, 1),
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Color.fromRGBO(221, 136, 207, 1),
                                    width: 1,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'NEW',
                                    style: TextStyle(
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // right: 15,
                              top: 88,
                              left: 15,
                              child: ClipRRect(
                                borderRadius: BorderRadiusGeometry.circular(32.r),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 12,
                                    sigmaY: 12,
                                  ),
                                  child: Container(
                                    width: 74,
                                    height: 22,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.22),
                                      borderRadius: BorderRadius.circular(32.r),
                                      border: Border.all(
                                        color: Color.fromRGBO(255, 255, 255, 0.2),
                                        width: 1,
                                      ),
                                    ),
                                    child: Text(
                                      discoverSCreenData[index]['distance']!,
                                      style: TextStyle(
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // right: 15,
                              top: 114,
                              left: 15,
                              child: Text(
                                discoverSCreenData[index]['name']!,
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              // right: 30,
                              top: 138,
                              left: 30,
                              child: Text(
                                discoverSCreenData[index]['city']!,
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Interest',
                      style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'View all',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(221, 136, 207, 1),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
            
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
                    // SizedBox(width: 12.w),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
            
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
                    //  SizedBox(width: 12.w),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
            
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
                          'Language',
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
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
            
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
                    // SizedBox(width: 12.w),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
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
                    //  SizedBox(width: 12.w),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
            
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
                SizedBox(height: 24),
                Text(
                  'Around me',
                  style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      'People with',
                      style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      ' "Music" ',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(221, 136, 207, 1),
                      ),
                    ),
                    Text(
                      'interest around you',
                      style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                            SizedBox(height: 16),

                Container(
                  width: double.infinity,
                  height: 300,
                  clipBehavior: .hardEdge ,
                  decoration: BoxDecoration(
                    // color: Color.fromRGBO(255, 255, 255, 1),
                    
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: FlutterMap(
                    options: MapOptions(
                      initialCenter: LatLng(24.8607, 67.0011),
                      initialZoom: 8

                    ),
                    children: [
                      TileLayer(
                       urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                       userAgentPackageName: 'com.example.friendzy_ui_app',

                      //  urlTemplate:  'https://{s}.basemaps.cartocdn.com/light_all/{z}/{x}/{y}{r}.png',
                      //  subdomains: ['a', 'b', 'c'],
                            ),
                    ]),
                ),
                SizedBox(height: 20)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
