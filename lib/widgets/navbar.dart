import 'package:flutter/material.dart';

class NavBarCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const [
      BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(
            Icons.home,
          )),
      BottomNavigationBarItem(
        label: 'Search',
        icon: Icon(Icons.search_sharp),
      ),
      BottomNavigationBarItem(
          label: 'Emergency', icon: Icon(Icons.emergency_rounded))
    ]);
  }
}
