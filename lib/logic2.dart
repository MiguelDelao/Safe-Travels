import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

void getCountryInfo(String country) async {
  print('getCountries Triggered');
  String endpoint = 'https://countryapi.io/api/name/';
  String apiKey = '?apikey=R8Rm3njYjFiq4NJmDJM7QvoHcKSRvB1We6cSLjpC';
  Uri uri = Uri.parse(endpoint + country + apiKey);
  final response = await http.get(uri);
  print(response.body);

  var x = json.decode(response.body);
  print(x["au"]["currencies"]["aud"]["country"]);


}
