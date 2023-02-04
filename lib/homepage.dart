import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'logic2.dart';

class CountryCard extends StatefulWidget {
  const CountryCard({super.key});

  @override
  State<CountryCard> createState() => _CountryCardState();
}

class _CountryCardState extends State<CountryCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(8.0),
          height: 100,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 184, 199, 206),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(4.0),
                margin: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Image.asset('images/testcat2.jpg'),
              ),
              Text('data')
            ],
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blueGrey,
          ),
          onPressed: () {
            print('button pressed');
            getCountryInfo('Australia');
          },
          child: Text('test API'),
        ),
      ],
    );
  }
}
