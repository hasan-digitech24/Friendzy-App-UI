import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BorderedIcon extends StatelessWidget {
  const BorderedIcon({super.key, required this.iconPath});

  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44.w,
      height: 44.w,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: BoxBorder.all(
          color: const Color.fromARGB(255, 243, 237, 237),
          width: 2,
        ),
      ),
      child: SvgPicture.asset(iconPath),
    );
  }
}
