import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:friendzy_ui_app/screens/add.dart';
import 'package:friendzy_ui_app/screens/discover.dart';
import 'package:friendzy_ui_app/screens/home.dart';
import 'package:friendzy_ui_app/screens/matches.dart';
import 'package:friendzy_ui_app/screens/messages.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBar();
}

class _BottomNavigationBar extends State<BottomNavigationBarScreen> {
  List<Widget> screens = [
    HomeScreen(),
    DiscoverScreen(),
    AddScreen(),
    MatchesScreen(),
    MessageScreen()
      ];

  int currentScreenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentScreenIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(30.r),
        child: Container(
          clipBehavior: Clip.hardEdge,
          margin: EdgeInsets.all(12),
          decoration: BoxDecoration(
            // color: Colors.amber,
          borderRadius: BorderRadius.circular(30.r)),
          child: NavigationBar(
            height: 64,
            indicatorColor: Color.fromRGBO(221, 136, 207, 1),
            indicatorShape: CircleBorder(),
            selectedIndex: currentScreenIndex,
            backgroundColor: Color.fromRGBO(255, 255, 255, 1),

            onDestinationSelected: (index) {
              setState(() {});
              currentScreenIndex = index;
            },
            

            destinations: [
              NavigationDestination(
                icon: SvgPicture.asset('assets/home2.svg'),
                // icon: navIcon('assets/home2.svg', 0),
                label: '',
              ),
               NavigationDestination(
                icon: SvgPicture.asset('assets/discover_icon.svg'),
                // icon: navIcon('assets/home2.svg', 0),
                label: '',
              ),
             NavigationDestination(
                icon: SvgPicture.asset('assets/add_icon.svg'),
                // icon: navIcon('assets/home2.svg', 0),
                label: '',
              ),
                NavigationDestination(
                icon: SvgPicture.asset('assets/friends_icon.svg'),
                // icon: navIcon('assets/home2.svg', 0),
                label: '',
              ),
              NavigationDestination(
                icon: SvgPicture.asset('assets/connect_icon.svg'),
                // icon: navIcon('assets/home2.svg', 0),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// custom icon ky liay hai
// Widget navIcon(String asset, int index) {
//   int selectedindex= 0;
//   bool isSelected = selectedindex == index;

//   return AnimatedContainer(
//     duration: Duration(milliseconds: 250),
//     padding: EdgeInsets.all(isSelected ? 10 : 6),
//     decoration: BoxDecoration(
//       color: isSelected
//           ? Color.fromRGBO(221, 136, 207, 1)
//           : Colors.transparent,
//       shape: BoxShape.circle,
//     ),
//     child: SvgPicture.asset(
//       asset,
//       color: isSelected ? Colors.white : Colors.grey,
//       width: 24,
//       height: 24,
//     ),
//   );
// }


// upar Naigation bar use kiya hai ismy bottom navigation bar 
//  bottomNavigationBar: ClipRRect(
//         borderRadius: BorderRadius.circular(30.r),
//         child: Container(
//           clipBehavior: Clip.hardEdge,
//           margin: EdgeInsets.all(12),
//           decoration: BoxDecoration(
//             // color: Colors.amber,
//           borderRadius: BorderRadius.circular(30.r)),
//           child: BottomNavigationBar(
//             currentIndex: selectedindex,
//             backgroundColor: Color.fromRGBO(255, 255, 255, 1),
//             type: BottomNavigationBarType.fixed,
//             // elevation: 0,

//             onTap: (index) {
//               setState(() {});
//               selectedindex = index;
//             },
            

//             items: [
//               BottomNavigationBarItem(
//                 icon: SvgPicture.asset('assets/home2.svg'),
//                 // icon: navIcon('assets/home2.svg', 0),
//                 label: '',
//               ),
//               BottomNavigationBarItem(
//                 icon: SvgPicture.asset('assets/discover_icon.svg'),
//                                 // icon: navIcon('assets/discover_icon.svg', 1),

//                 label: '',
//               ),
//               BottomNavigationBarItem(
//                 icon: SvgPicture.asset('assets/add_icon.svg'),
//                                                 // icon: navIcon('assets/add_icon.svg', 2),

//                 label: '',
//               ),
//               BottomNavigationBarItem(
//                 icon: SvgPicture.asset('assets/friends_icon.svg'),
//                                                                 // icon: navIcon('assets/friends_icon.svg', 3),

//                 label: '',
//               ),
//               BottomNavigationBarItem(
//                 icon: SvgPicture.asset('assets/connect_icon.svg'),
//                                                                                 // icon: navIcon('assets/friends_icon.svg', 4),
//                 label: '',
//               ),
//             ],
//           ),
//         ),
//       ),