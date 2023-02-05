import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'CountryInfo.dart';

Future<Map<String, dynamic>> loadCountries() async {
  String jsonString = await rootBundle.loadString('assets/countries.json');
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

Future<CountryInfo> getCountryInfo(String country) async {
  print('getCountries Triggered');
  Map<String, dynamic> countries = await loadCountries();

  String endpoint = 'https://countryapi.io/api/name/';
  String apiKey = '?apikey=OcrEUad7yoyHIz9pxoeupkFqo3VZzcBUe23XL16t';
  Uri uri = Uri.parse(endpoint + country + apiKey);
  final response = await http.get(uri);
  /*print(response.body);*/
  dynamic parsedJson = jsonDecode(response.body);

  CountryInfo countryInfo =
      CountryInfo(); //New Object to store a country's information

  //Due to inconsistent Json wrappers, we loop through each and check for the values we need
  parsedJson.forEach((key, value) async {
    value.forEach((key, value) async {
      //Each if statement represents locating a desired value and assigning it to countryInfo.
      print('going through keys');
      if (key == 'name') {
        print('name found successfully');
        countryInfo.name = value;
      }
      if (key == 'alpha3Code') {
        print('code found successfully');
        countryInfo.alphaCode = value;
      }
      if (key == 'capital') {
        print('capital found successfully');
        countryInfo.capital = value;
      }
      if (key == 'population') {
        print('population found successfully');
        int tempPop = value;
        countryInfo.population = tempPop.toString();
      }
      //The following values are located within maps, requiring deeper parsing:
      if (key == 'demonyms') {
        value.forEach((key, value) {
          if (key == 'eng') {
            value.forEach((key, value) {
              if (key == 'm') {
                countryInfo.language = value;
              }
            });
          }
        });
      }
      if (key == 'currencies') {
        print('currencies found successfully');
        value.forEach((key, value) {
          countryInfo.currency = value['name'];
        });
      }
    });
  });
  //Print a summary of information found:
  countryInfo.printAll();

  //ADVISORY FETCH

  String countryCode = countries[country];
  Map<String, dynamic> advisoryContent =
      await fetchCountryAdvisory(countryCode);

  print(advisoryContent);

  String score =
      advisoryContent["data"][countryCode]["advisory"]["score"].toString();
  print(score);
  countryInfo.advisoryScore = score;

  String advisoryMessage =
      (advisoryContent["data"][countryCode]["advisory"]["message"]);

  countryInfo.advisoryMessage = advisoryMessage;

  print(countryInfo.advisoryMessage);
  print(countryInfo.advisoryScore);

  return countryInfo;
} //getCountryInfo