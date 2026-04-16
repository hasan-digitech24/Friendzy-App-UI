import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AddStoryBtn extends StatelessWidget {
  final String image, name;
  const AddStoryBtn({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(shape: .circle),
              child: ClipOval(child: Image.asset(image, fit: .cover)),
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
                    color: const Color.fromARGB(255, 243, 237, 237),
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
        SizedBox(height: 8),
        Text(
          name,
          style: TextStyle(
            fontFamily: 'Hellix',
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
