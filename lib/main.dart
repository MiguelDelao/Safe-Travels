import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vaughn_s_application6/presentation/home_pg_screen/home_pg_screen.dart';
import 'package:vaughn_s_application6/widgets/navbar.dart';

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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      title: 'vaughn_s_application6',
      home: Scaffold(
        body: HomePgScreen(),
        bottomNavigationBar: NavBarCustom(),
      ),
    );
  }
}
