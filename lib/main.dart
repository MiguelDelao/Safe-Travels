import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter/services.dart';
import 'package:vaughn_s_application6/presentation/home_pg_screen/home_pg_screen.dart';
import 'package:vaughn_s_application6/presentation/search_page_screen/search_page_screen.dart';
import 'package:vaughn_s_application6/widgets/navbar.dart';
=======
import 'package:zeus/searchBar.dart';
import 'logic.dart';
>>>>>>> main

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
<<<<<<< HEAD
  int currentIndex = 0;
=======
  int index = 0;
  Map<String, dynamic> _map = Map<String, dynamic>();
  @override
  void initState() {
    super.initState();

    loadCountries().then((value) {
      setState(() {
        _map = value;
      });
    });
  }
>>>>>>> main

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      title: 'vaughn_s_application6',
      home: Scaffold(
        body: Center(
            child: currentIndex == 0
                ? Container(
                    child: HomePgScreen(),
                  )
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
<<<<<<< HEAD
      ),
    );
=======
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            title: const Text("test"),
          ),
          body: Column(
            children: [
              SearchBar(
                onSelect: (selected) => {print(selected)},
              ),
            ],
          ),
        ));
>>>>>>> main
  }
}
