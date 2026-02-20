import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:friendzy_ui_app/widgets/bordered_icon.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
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
        BorderedIcon(iconPath: 'assets/notification_icon.svg'),
      ],
    );
  }
}
