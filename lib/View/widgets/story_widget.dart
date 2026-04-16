import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({super.key, required this.image, required this.name});

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64,
      child: Column(
        children: [
          Container(
            width: 64,
            height: 64,
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: BoxBorder.all(
                color: const Color.fromRGBO(255, 150, 213, 1),
                width: 2,
              ),
            ),
            child: ClipOval(child: Image.asset(image, fit: .cover)),
          ),
          SizedBox(height: 8),
          Text(
            name,
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
}
