import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:friendzy_ui_app/screens/discover.dart';
import 'package:friendzy_ui_app/screens/home.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBar();
}

class _BottomNavigationBar extends State<BottomNavigationBarScreen> {
  List<Widget> screens = [
    HomeScreen(),
    DiscoverScreen(),
    Center(child: Text("add Screen")),
    Center(child: Text("friends Screen")),
    Center(child: Text("contact Screen")),
  ];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedindex],
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(color: Colors.amber,
        borderRadius: BorderRadius.circular(20)),
        child: BottomNavigationBar(
          currentIndex: selectedindex,
          onTap: (index) {
            setState(() {});
            selectedindex = index;
          },
          backgroundColor: Color(0xffDD88CF),
       
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/home2.svg'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/discover_icon.svg'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/add_icon.svg'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/friends_icon.svg'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/connect_icon.svg'),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
