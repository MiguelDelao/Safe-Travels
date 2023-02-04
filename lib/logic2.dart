import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

Future<CountryInfo> getCountryInfo(String country) async {
  print('getCountries Triggered');
  String endpoint = 'https://countryapi.io/api/name/';
  String apiKey = '?apikey=R8Rm3njYjFiq4NJmDJM7QvoHcKSRvB1We6cSLjpC';
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
        value.forEach((key, value){
          countryInfo.currency = value['name'];
        });
      }
    });
  });
  //Print a summary of information found:
  countryInfo.printAll();
  return countryInfo;
} //getCountryInfo

class CountryInfo {
  String capital;
  String name;
  String population;
  String currency;
  String language;
  String alphaCode;

  CountryInfo(
      {this.alphaCode = '',
      this.capital = '',
      this.name = '',
      this.population = '',
      this.currency = '',
      this.language = ''}
  ); 

  void printAll() {
    print('VALUES FOUND:');
    print('name: ' + this.name);
    print('code: ' + this.alphaCode);
    print('capital: ' + this.capital);
    print('population: ' + this.population);
    print('currency: ' + this.currency);
    print('language: ' + this.language);
  } //countryInfo

}
