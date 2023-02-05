import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zeus/CountryInfo.dart';

class CountryCard extends StatelessWidget {
  CountryInfo country;

  CountryCard({super.key, required this.country});

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
