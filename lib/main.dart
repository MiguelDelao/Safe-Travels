import 'package:flutter/material.dart';
import 'package:zeus/searchBar.dart';
import 'logic.dart';

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            title: const Text("test"),
          ),
          body: Column(
            children: [
              SearchBar(
                pressed: (selected) => {print(selected)},
              ),
            ],
          ),
        ));
  }
}
