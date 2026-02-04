import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12),
              Row(
                children: [
                  SvgPicture.asset('assets/location.svg'),
                  SizedBox(width: 4),
                  Text(
                    'Germany',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(width: 4),

                  SvgPicture.asset('assets/arrow.svg'),
                ],
              ),
              SizedBox(height: 6),
              Row(
                children: [
                  Text(
                    'Discover',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(width: 137),

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
                      'assets/search.svg',
                      width: 24,
                      height: 24,
                    ),
                  ),
                  SizedBox(width: 8),
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
                      'assets/filter.svg',
                      width: 24,
                      height: 24,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Container(
                        width: 105,
                        height: 160,
                        // child widget parent ki shape follow kryga clipbehaviour deny sai
                        clipBehavior: Clip.hardEdge,
                        // color: Colors.amber,
                        decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                      
                        ),
                        child: Stack(
                          children: [
                            Image.asset('assets/discover_profile1.jpg',fit: BoxFit.cover,),
                             Positioned(
                                left: 8,
                                top: 8,
                                child: Container(
                                  width: 41,
                                  height: 22,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(75, 22, 76, 1),
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Color.fromRGBO(221, 136, 207, 1),
                                    width: 1)
                                  ),
                                  child: Center(
                                    child: Text(
                                      'NEW',
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,color: Colors.white
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                               Positioned(
                                right: 15,
                                top: 88,
                                left: 15,
                                child: ClipRRect(
                                  borderRadius: BorderRadiusGeometry.circular(32),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 12,
                                      sigmaY: 12,
                                    ),
                                    child: Container(
                                      width: 74,
                                  height: 22,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 8,vertical: 4
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.22),
                                        borderRadius: BorderRadius.circular(32),
                                        border: Border.all(color: Color.fromRGBO(255, 255, 255, 0.2),
                                    width: 1)
                                        
                                      ),
                                      child:  Text(
                                      '16 km away',
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,color: Colors.white
                                      ),
                                    ),
                                    ),
                                  ),
                                ),
                              ),
                               Positioned(
                                right: 15,
                                top: 114,
                                left: 15,
                                child: Text(
                                'Halima, 19',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,color: Colors.white
                                ),
                                                              ),
                              ),
                               Positioned(
                                right: 30,
                                top: 138,
                                left: 30,
                                child: Text(
                                'BERLIN',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,color: Colors.white
                                ),
                                                              ),
                              ),
                          ],
                        )  
                      ),
                SizedBox(width: 12),
                Container(
                        width: 105,
                        height: 160,
                        // child widget parent ki shape follow kryga clipbehaviour deny sai
                        clipBehavior: Clip.hardEdge,
                        // color: Colors.amber,
                        decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                      
                        ),
                        child: Stack(
                          children: [
                            Image.asset('assets/discover_profile2.jpg',fit: BoxFit.cover,),
                             Positioned(
                                left: 8,
                                top: 8,
                                child: Container(
                                  width: 41,
                                  height: 22,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(75, 22, 76, 1),
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Color.fromRGBO(221, 136, 207, 1),
                                    width: 1)
                                  ),
                                  child: Center(
                                    child: Text(
                                      'NEW',
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,color: Colors.white
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                               Positioned(
                                right: 15,
                                top: 88,
                                left: 15,
                                child: ClipRRect(
                                  borderRadius: BorderRadiusGeometry.circular(32),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 12,
                                      sigmaY: 12,
                                    ),
                                    child: Container(
                                      width: 74,
                                  height: 22,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 6,vertical: 4
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.22),
                                        borderRadius: BorderRadius.circular(32),
                                        border: Border.all(color: Color.fromRGBO(255, 255, 255, 0.2),
                                    width: 1)
                                        
                                      ),
                                      child:  Text(
                                      '4,8 km away',
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,color: Colors.white
                                      ),
                                    ),
                                    ),
                                  ),
                                ),
                              ),
                               Positioned(
                                right: 15,
                                top: 114,
                                left: 15,
                                child: Text(
                                'Vanessa, 18',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,color: Colors.white
                                ),
                                                              ),
                              ),
                               Positioned(
                                right: 30,
                                top: 138,
                                left: 30,
                                child: Text(
                                'MUNICH',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,color: Colors.white
                                ),
                                                              ),
                              ),
                          ],
                        )  
                      ),
                      SizedBox(width: 12),
                      Container(
                        width: 105,
                        height: 160,
                        // child widget parent ki shape follow kryga clipbehaviour deny sai
                        clipBehavior: Clip.hardEdge,
                        // color: Colors.amber,
                        decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                      
                        ),
                        child: Stack(
                          children: [
                            Image.asset('assets/discover_profile3.jpg',fit: BoxFit.cover,),
                             Positioned(
                                left: 8,
                                top: 8,
                                child: Container(
                                  width: 41,
                                  height: 22,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(75, 22, 76, 1),
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Color.fromRGBO(221, 136, 207, 1),
                                    width: 1)
                                  ),
                                  child: Center(
                                    child: Text(
                                      'NEW',
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,color: Colors.white
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                               Positioned(
                                right: 15,
                                top: 88,
                                left: 15,
                                child: ClipRRect(
                                  borderRadius: BorderRadiusGeometry.circular(32),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 12,
                                      sigmaY: 12,
                                    ),
                                    child: Container(
                                      width: 74,
                                  height: 22,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 6,vertical: 4
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.22),
                                        borderRadius: BorderRadius.circular(32),
                                        border: Border.all(color: Color.fromRGBO(255, 255, 255, 0.2),
                                    width: 1)
                                        
                                      ),
                                      child:  Text(
                                      '2,2 km away',
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,color: Colors.white
                                      ),
                                    ),
                                    ),
                                  ),
                                ),
                              ),
                               Positioned(
                                right: 15,
                                top: 114,
                                left: 15,
                                child: Text(
                                'James, 20',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,color: Colors.white
                                ),
                                                              ),
                              ),
                               Positioned(
                                right: 28,
                                top: 138,
                                left: 28,
                                child: Text(
                                'HANOVER',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,color: Colors.white
                                ),
                                                              ),
                              ),
                          ],
                        )  
                      ),
                      SizedBox(width: 12),
                      Container(
                        width: 105,
                        height: 160,
                        // child widget parent ki shape follow kryga clipbehaviour deny sai
                        clipBehavior: Clip.hardEdge,
                        // color: Colors.amber,
                        decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                      
                        ),
                        child: Stack(
                          children: [
                            Image.asset('assets/discover_profile4.jpg',fit: BoxFit.cover,),
                             Positioned(
                                left: 8,
                                top: 8,
                                child: Container(
                                  width: 41,
                                  height: 22,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(75, 22, 76, 1),
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Color.fromRGBO(221, 136, 207, 1),
                                    width: 1)
                                  ),
                                  child: Center(
                                    child: Text(
                                      'NEW',
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,color: Colors.white
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                               Positioned(
                                right: 15,
                                top: 88,
                                left: 15,
                                child: ClipRRect(
                                  borderRadius: BorderRadiusGeometry.circular(32),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 12,
                                      sigmaY: 12,
                                    ),
                                    child: Container(
                                      width: 74,
                                  height: 22,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 6,vertical: 2
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.22),
                                        borderRadius: BorderRadius.circular(32),
                                        border: Border.all(color: Color.fromRGBO(255, 255, 255, 0.2),
                                    width: 1)
                                        
                                      ),
                                      child:  Text(
                                      '8,5 km away',
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,color: Colors.white
                                      ),
                                    ),
                                    ),
                                  ),
                                ),
                              ),
                               Positioned(
                                right: 15,
                                top: 114,
                                left: 15,
                                child: Text(
                                'Benan, 26',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,color: Colors.white
                                ),
                                                              ),
                              ),
                               Positioned(
                                right: 30,
                                top: 138,
                                left: 30,
                                child: Text(
                                'Venice',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,color: Colors.white
                                ),
                                                              ),
                              ),
                          ],
                        )  
                      ),
                ],),
              ),
              SizedBox(height: 24),
              Row(children: [
                Text(
                                'Interest',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                            ),
                            SizedBox(width: 185),
                            TextButton(onPressed: (){}, child:  Text(
                                'View all',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(221, 136, 207, 1)
                                ),
                            ),)
              ],),
              SizedBox(height: 16 ),
              Row(children: [
                                Container(
                                  //     width: 100,
                                  // height: 40,
                                                                    padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),

                                      decoration: BoxDecoration(
                                        // color: Colors.amber,
                                        borderRadius: BorderRadius.circular(32),
                                        border: Border.all(color: Color.fromRGBO(224, 213, 224, 1),
                                    width: 1)
                                        
                                      ),
                                      child:  Center(
                                        child: Text(
                                        'Football',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,color: Color.fromRGBO(75, 22, 76, 1)
                                        ),),
                                      ),
                                    ),
                                    SizedBox(width: 12),
                                    Container(
                                  //     width: 100,
                                  // height: 40,
                                                                    padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),

                                      decoration: BoxDecoration(
                                        // color: Colors.amber,
                                        borderRadius: BorderRadius.circular(32),
                                        border: Border.all(color: Color.fromRGBO(224, 213, 224, 1),
                                    width: 1)
                                        
                                      ),
                                      child:  Center(
                                        child: Text(
                                        'Nature',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,color: Color.fromRGBO(75, 22, 76, 1)
                                        ),),
                                      ),
                                    ),
                                     SizedBox(width: 12),
                                    Container(
                                  //     width: 100,
                                  // height: 40,
                                                                    padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),

                                      decoration: BoxDecoration(
                                        // color: Colors.amber,
                                        borderRadius: BorderRadius.circular(32),
                                        border: Border.all(color: Color.fromRGBO(224, 213, 224, 1),
                                    width: 1)
                                        
                                      ),
                                      child:  Center(
                                        child: Text(
                                        'Language',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,color: Color.fromRGBO(75, 22, 76, 1)
                                        ),),
                                      ),
                                    ),
              ],),
               SizedBox(height: 12 ),
              Row(children: [
                                Container(
                                      // width: 100,
                                  // height: 40,
                                                                    padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),

                                      decoration: BoxDecoration(
                                        // color: Colors.amber,
                                        borderRadius: BorderRadius.circular(32),
                                        border: Border.all(color: Color.fromRGBO(224, 213, 224, 1),
                                    width: 1)
                                        
                                      ),
                                      child:  Center(
                                        child: Text(
                                        'Photography',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,color: Color.fromRGBO(75, 22, 76, 1)
                                        ),),
                                      ),
                                    ),
                                    SizedBox(width: 12),
                                    Container(
                                  //     width: 100,
                                  // height: 40,
                                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(221, 136, 207, 1),
                                        borderRadius: BorderRadius.circular(32),
                                        border: Border.all(color: Color.fromRGBO(224, 213, 224, 1),
                                    width: 1)
                                        
                                      ),
                                      child:  Center(
                                        child: Text(
                                        'Music',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,color: Color.fromRGBO(75, 22, 76, 1)
                                        ),),
                                      ),
                                    ),
                                     SizedBox(width: 12),
                                    Container(
                                  //     width: 100,
                                  // height: 40,
                                                                    padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),

                                      decoration: BoxDecoration(
                                        // color: Colors.amber,
                                        borderRadius: BorderRadius.circular(32),
                                        border: Border.all(color: Color.fromRGBO(224, 213, 224, 1),
                                    width: 1)
                                        
                                      ),
                                      child:  Center(
                                        child: Text(
                                        'Writing',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,color: Color.fromRGBO(75, 22, 76, 1)
                                        ),),
                                      ),
                                    ),
              ],),
              SizedBox(height: 24),
              Text(
                                        'Around me',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700
                                        ),),
                                                      SizedBox(height: 4),
                      Row(children: [
                                                         Text(
                                        'People with',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400
                                        ),),
                                         Text(
                                        ' "Music" ',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(221, 136, 207, 1)
                                        ),),
                                         Text(
                                        'interest around you',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400
                                        ),)

                                                      ],)

            ],
          ),
        ),
      ),
    );
  }
}
