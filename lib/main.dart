import 'package:flutter/material.dart';
import 'logic.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
             items: const [
              BottomNavigationBarItem(
                label: 'temp1',
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: 'temp2',
                icon: Icon(Icons.search),
              )
             ],
          ),
          appBar: AppBar(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            title: const Text("test"),
          ),
          body: CountryCard(),
        ));
  }
}
