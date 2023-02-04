import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> loadCountries() async {
  String jsonString = await rootBundle.loadString('/countries.json');
  Map<String, dynamic> countries = json.decode(jsonString);
  return countries;
}

Future<Map<String, dynamic>> fetchCountryAdvisory(String code) async {
  Uri uu = Uri.parse("https://www.travel-advisory.info/api?countrycode=$code");
  final response = await http.get(uu);
  print(response.body);

  Map<String, dynamic> info = json.decode(response.body);
  info["data"][code]["advisory"]["score"];

  return info;
}

void testApi() async {}
