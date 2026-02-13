import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ConnectScreen extends StatelessWidget {
  const ConnectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(75, 22, 76, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(right: 280),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: BoxBorder.all(color: Colors.white, width: 0),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: SvgPicture.asset(
                      'assets/back_icon.svg',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 58),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Text(
                      'You connected with ',
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Clara',
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(221, 136, 207, 1),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Text(
                '11 mins ago',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(185, 165, 185, 1),
                ),
              ),
              SizedBox(height: 24),
              Container(
                width: 124,
                height: 124,
                padding: EdgeInsets.all(4),
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color.fromRGBO(221, 136, 207, 1),
                    width: 4,
                  ),
                ),
                child: ClipOval(
                  child: Image.asset('assets/story2.png', fit: BoxFit.cover),
                ),
              ),

              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  children: [
                    Text(
                      'Know when ',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Clara ',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(221, 136, 207, 1),
                      ),
                    ),
                    Text(
                      'has read your',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'message',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: 156.w,
                height: 28.w,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(221, 136, 207, 1),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 8.w),
                    SvgPicture.asset('assets/tick_icon.svg'),
                    SizedBox(width: 4.w),
                    Text(
                      'Get Read Receipts',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 47),
              Image.asset('assets/addscreen_image.png'),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: .centerFloat,
      floatingActionButton: Stack(
        clipBehavior: .none,
        children: [
          Padding(
            padding: const .symmetric(horizontal: 24),
            child: ClipPath(
              clipper:  ContainerClipper(),
              child: Container(
                // width: 327,
                height: 64,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32.r),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // SizedBox(width: 49.w),
                      SvgPicture.asset('assets/attach_icon.svg'),
                      // Spacer(),
                      // SizedBox(width: 177.w),
                      SvgPicture.asset('assets/keyboard_icon.svg'),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 1,
            right: 1,
            bottom: 35,
            child: Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(221, 136, 207, 1),
              ),
              child: SvgPicture.asset(
                'assets/voice_icon.svg',
                width: 24,
                height: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ContainerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    double notchRadius = 36; // golai
    double notchDepth = 5;  // 👈 sirf itna neeche jayega
    double notchCenterX = size.width / 2;

    path.moveTo(0, 0);

    // left side
    path.lineTo(notchCenterX - notchRadius * 2, 0);

    // left curve
    path.quadraticBezierTo(
      notchCenterX - notchRadius,
      0,
      notchCenterX - notchRadius,
      notchDepth,
    );

    // main arc (NOT too deep)
    path.arcToPoint(
      Offset(notchCenterX + notchRadius, notchDepth),
      radius: Radius.circular(notchRadius),
      clockwise: false,
    );

    // right curve
    path.quadraticBezierTo(
      notchCenterX + notchRadius,
      0,
      notchCenterX + notchRadius * 2,
      0,
    );

    // rest
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}


