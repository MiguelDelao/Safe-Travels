import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zeus/logic.dart';
import 'package:zeus/presentation/home_pg_screen/home_pg_screen.dart';
import 'package:zeus/presentation/search_page_screen/search_page_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  bool populating = false;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      title: 'Zeus',
      home: Scaffold(
        body: Center(
            child: currentIndex == 0
                ? Container(child: Cardddd())
                : Container(
                    child: SearchPageScreen(),
                  )),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                )),
            BottomNavigationBarItem(
              label: 'Search',
              icon: Icon(Icons.search_sharp, color: Colors.black),
            ),
          ],
          currentIndex: currentIndex,
          fixedColor: Colors.teal,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}

class Cardddd extends StatefulWidget {
  const Cardddd({super.key});

  @override
  State<Cardddd> createState() => _CarddddState();
}

class _CarddddState extends State<Cardddd> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black.withOpacity(.8),
      ),
      height: 100,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
              height: double.infinity,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Image.network(
                    'https://countryflagsapi.com/png/brazil',
                    fit: BoxFit.cover,
                  ),
                ),
              )),
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Center(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Brazil',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
