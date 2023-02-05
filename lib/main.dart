import 'package:flutter/material.dart';
import 'package:zeus/CountryCard.dart';
import 'package:zeus/logic.dart';
import 'package:zeus/presentation/home_pg_screen/home_pg_screen.dart';
import 'package:zeus/presentation/search_page_screen/search_page_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;

  List<CountryCard> CountryCards = [];

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
                ? Container(child: HomePgScreen())
                : Container(
                    child: SearchPageScreen(removeCountry: (selectedCountry) {
                      CountryCards.remove(CountryCard(
                        country: selectedCountry,
                      ));

                      for (var i = 0; i < CountryCards.length; i++) {
                        if (CountryCards[i].country.name ==
                            selectedCountry.name) {
                          CountryCards.removeAt(i);
                          print(CountryCards.length);
                          return;
                        }
                      }
                    }, passCountry: (selectedCountry) {
                      CountryCards.add(CountryCard(country: selectedCountry));
                      CountryCards.forEach((element) {
                        print(element);
                        print(CountryCards.length);
                      });
                    }),
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
