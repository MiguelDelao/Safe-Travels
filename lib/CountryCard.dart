import 'dart:ui';

import 'package:flutter/material.dart';

class CountryCard extends StatefulWidget {
  CountryCard({super.key});

  @override
  State<CountryCard> createState() => _CountryCardState();
}

class _CountryCardState extends State<CountryCard> {
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
                  'Hello World',
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
