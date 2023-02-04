import 'package:flutter/material.dart';

class NavBarCustom extends StatefulWidget {
  @override
  State<NavBarCustom> createState() => _NavBarCustomState();
}

class _NavBarCustomState extends State<NavBarCustom> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
              color: Colors.teal,
            )),
        BottomNavigationBarItem(
          label: 'Search',
          icon: Icon(Icons.search_sharp, color: Colors.teal),
        ),
      ],
      currentIndex: currentIndex,
      onTap: (int index) {
        setState(() {
          currentIndex = index;
        });
      },
    );
  }
}
