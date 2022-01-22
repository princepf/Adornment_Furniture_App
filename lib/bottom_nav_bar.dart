import 'package:adornment/home_screen.dart';
import 'package:flutter/material.dart';

import 'notification_page.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    HomeScreen(),
    NotificationPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          selectedItemColor: Color(0xFF11A0EB),
          unselectedItemColor: Colors.black,
          selectedFontSize: 15,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: 'Profile'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_active_outlined), label: 'Cart'),
          ]),
      body: Center(
        child: pages.elementAt(selectedIndex),
      ),
    );
  }
}
