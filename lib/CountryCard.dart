import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zeus/CountryInfo.dart';
import 'package:zeus/presentation/home_pg_country_pg_screen/home_pg_country_pg_screen.dart';

class CountryCard extends StatelessWidget {
  CountryInfo country;

  CountryCard({super.key, required this.country});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => HomePgCountryScreen(
              selectedCountry: country,
            ),
          ),
        );
      },
      child: Container(
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
                      'https://countryflagsapi.com/png/' + country.name,
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
                    country.name,
                    style: TextStyle(
                      foreground: Paint()
                      ..strokeWidth = 5
                      ..style = PaintingStyle.stroke
                      ..color = Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Center(
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    country.name,
                    style: TextStyle(
                      foreground: Paint()
                      ..strokeWidth = 5
                      ..style = PaintingStyle.fill
                      ..color = Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
