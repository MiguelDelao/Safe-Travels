import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String population = '4,000';
  String capital = 'Washington, D.C';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16)),
        TextFormField(
          decoration: const InputDecoration(
              border: UnderlineInputBorder(), labelText: 'Search Countries'),
        ),
        Image.asset('images/USA.png'),
        const Text(
          'United States',
          textAlign: TextAlign.left,
          textScaleFactor: 2.0,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const Text(
          'General Info: ',
          textAlign: TextAlign.left,
          textScaleFactor: 1.5,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Row(children: [
          Text('Population: ', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(population)
        ]),
        Row(
          children: [
            Text('Capital: ', style: TextStyle(fontWeight: FontWeight.bold)),
            Text(capital)
          ],
        )
      ],
    );
  }
}
