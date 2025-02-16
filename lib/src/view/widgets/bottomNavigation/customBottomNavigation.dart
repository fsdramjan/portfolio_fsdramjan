import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

enum _SelectedTab { home, favorite, add, search, person }

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({super.key});

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return CrystalNavigationBar(
      marginR: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 20,
      ),
      currentIndex: _SelectedTab.values.indexOf(_selectedTab),
      height: 10,
      indicatorColor: Colors.blue,
      unselectedItemColor: Colors.white70,
      backgroundColor: Colors.black.withOpacity(0.1),
      // boxShadow: [
      //   BoxShadow(
      //     color: Colors.black.withOpacity(0.1),
      //     blurRadius: 4,
      //     spreadRadius: 4,
      //     offset: Offset(0, 10),
      //   ),
      // ],
      onTap: _handleIndexChanged,
      items: [
        /// Home
        CrystalNavigationBarItem(
          icon: IconlyBold.home,
          unselectedIcon: IconlyLight.home,
          selectedColor: Colors.white,
        ),

        /// Favourite
        CrystalNavigationBarItem(
          icon: IconlyBold.heart,
          unselectedIcon: IconlyLight.heart,
          selectedColor: Colors.red,
        ),

        /// Add
        CrystalNavigationBarItem(
          icon: IconlyBold.plus,
          unselectedIcon: IconlyLight.plus,
          selectedColor: Colors.white,
        ),

        /// Search
        CrystalNavigationBarItem(
            icon: IconlyBold.search,
            unselectedIcon: IconlyLight.search,
            selectedColor: Colors.white),

        /// Profile
        CrystalNavigationBarItem(
          icon: IconlyBold.user_2,
          unselectedIcon: IconlyLight.user,
          selectedColor: Colors.white,
        ),
      ],
    );
  }
}
