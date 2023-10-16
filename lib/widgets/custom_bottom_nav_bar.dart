// ignore_for_file: prefer_const_constructors

import 'package:farmvest_x/screens/farms_screen.dart';
import 'package:farmvest_x/screens/home_screen.dart';
import 'package:farmvest_x/screens/profile_screen.dart';
import 'package:farmvest_x/screens/support_screen.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    FarmsScreen(),
    SupportScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    }); // print('Tapeped index is ${_selectedIndex}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          elevation: 0,
          showSelectedLabels: true,
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          unselectedLabelStyle: TextStyle(
            color: Colors.black,
          ),
          selectedLabelStyle:
              TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/icons/home_icon.png'),
                height: 30,
              ),
              activeIcon: Image(
                image: AssetImage('assets/icons/home_active.png'),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/icons/farm_icon.png'),
                height: 30,
              ),
              label: 'Farms',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/icons/headset.png'),
                height: 30,
              ),
              label: 'Support',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              activeIcon: Icon(
                Icons.person,
                size: 30,
                color: Colors.black,
              ),
              label: 'Profile',
            ),
          ]),
    );
  }
}
