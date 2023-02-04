import 'package:flutter/material.dart';
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
    fetchInfo("US");
    loadJson().then((value) {
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
          body: _map.isEmpty
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: _map.length,
                  itemBuilder: (context, index) {
                    String country = _map.keys.elementAt(index);
                    return ListTile(
                      title: Text(country),
                    );
                  },
                ),
        ));
  }
}
