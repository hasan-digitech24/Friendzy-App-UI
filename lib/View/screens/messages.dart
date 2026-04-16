import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MessageScreen extends StatelessWidget {
  MessageScreen({super.key});

  List<Map<String, String>> messages = [
    {
      'image': 'assets/discover_profile1.jpg',
      'name': 'Halima',
      'lastMessage': 'What about that new jacket if I ...',
      'time': '09:18',
    },
    {
      'image': 'assets/discover_profile2.jpg',
      'name': 'Vanessa',
      'lastMessage': 'I know right',
      'time': '03:18',
    },
    {
      'image': 'assets/discover_profile3.jpg',
      'name': 'James',
      'lastMessage': "I’ve already registered, can’t wai...",
      'time': '05:18',
    },
    {
      'image': 'assets/discover_profile4.jpg',
      'name': 'Eddie',
      'lastMessage': 'It will have two lines of heading ...',
      'time': '07:25',
    },
    {
      'image': 'assets/discover_profile5.jpg',
      'name': 'Brandon',
      'lastMessage': 'hey..',
      'time': '02:18',
    },
    {
      'image': 'assets/discover_profile6.jpg',
      'name': 'Alfredo',
      'lastMessage': 'have you checked it?',
      'time': '10:11',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(75, 22, 76, 1),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12),
            Row(
              children: [
                SizedBox(width: 24.w),

                Container(
                  width: 40,
                  height: 40,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: BoxBorder.all(
                      color: const Color.fromRGBO(174, 161, 161, 1),
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
                SizedBox(width: 69.w),
                Text(
                  'Messages',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Recent Matches',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: SizedBox(
              height: 100,
              child: ListView.separated( itemCount: messages.length,
              scrollDirection: Axis.horizontal,
               separatorBuilder: (context, index){
                return SizedBox(width: 20.w);
              } ,
              itemBuilder: (context, index){
                  if(index == 0){
                   return Container(
                          width: 80,
                          height: 92,
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            image: DecorationImage(
                              image: AssetImage(messages[index]['image']!),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Container(
                            // padding: EdgeInsets.only(top: 16),
                            color: Color.fromRGBO(207, 97, 155, 1).withOpacity(0.5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/like.svg'),
                                Text(
                                  '32',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                  }
                  else{
                   return Container(
                          width: 80,
                          height: 92,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            image: DecorationImage(
                              image: AssetImage(messages[index]['image']!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                  }
              }),
            ),
          ),
            SizedBox(height: 22),
            Expanded(
              child: Container(
                width: double.infinity,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r),
                  ),
                ),
                child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      margin: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(
                              messages[index]['image']!,
                            ),
                          ),
                          SizedBox(width: 16.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  messages[index]['name']!,
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),

                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,

                                  children: [
                                    Text(
                                      messages[index]['lastMessage']!,
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                      ),
                                    ),

                                    Text(
                                      messages[index]['time']!,
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(182, 186, 194, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
