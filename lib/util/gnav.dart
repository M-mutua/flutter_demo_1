import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class MyBottomNav extends StatelessWidget {
  void Function(int)? onTabChange;
   MyBottomNav({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: GNav(        
        color: Colors.grey.shade100,
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 16,
        onTabChange:(value) => onTabChange! (value),
          tabs: [
            GButton(
              icon: Icons.home,
              text: "S H O P",
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: "C A R T",
              )
        ]),
      )
    );
  }
}