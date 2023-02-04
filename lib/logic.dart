import 'dart:convert';
import 'package:flutter/services.dart';
import 'travelAdvisory.dart';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> loadJson() async {
  String jsonString = await rootBundle.loadString('/countries.json');
  Map<String, dynamic> countries = json.decode(jsonString);
  return countries;
}

void fetchInfo(String code) async {
  Uri uu = Uri.parse("https://www.travel-advisory.info/api?countrycode=$code");
  final response = await http.get(uu);
  print(response.body);

  Map<String, dynamic> possible = json.decode(response.body);
  print(possible["data"][code]["advisory"]["score"]);
}

void testApi() async {}
