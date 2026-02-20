import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final String image;
  final Color? bgcolor;
  final Color? txtcolor;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.image,
    required this.onPressed,
    this.bgcolor,
    this.txtcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.sp),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgcolor ?? Color(0xff4B164C),
          minimumSize: Size(double.infinity, 56),
          padding: EdgeInsets.only(left: 8.sp),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(8.sp),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(image),
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: txtcolor ?? Colors.white,
              ),
            ),
            const SizedBox(width: 40),
          ],
        ),
      ),
    );
  }
}
