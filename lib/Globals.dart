library Globals;

import 'package:zeus/CountryCard.dart';
import 'CountryInfo.dart';

List<CountryCard> CountryCards = [];

void addCountryCard(CountryCard country) {
  CountryCards.add(country);
  printer();
}

void removeCountry(CountryCard country) {
  for (var i = 0; i < CountryCards.length; i++) {
    if (country.country.name == CountryCards[i].country.name) {
      CountryCards.removeAt(i);
    }
  }
  printer();
}

bool contains(CountryInfo country) {
  for (var i = 0; i < CountryCards.length; i++) {
    if (CountryCards[i].country.name == country.name) {
      return true;
    }
  }
  return false;
}

void printer() {
  print(CountryCards.length);
  CountryCards.forEach((element) {
    print(element.country.name + "is in ");
  });
}
