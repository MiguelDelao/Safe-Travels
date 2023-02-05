library Globals;

import 'package:zeus/CountryCard.dart';
import 'CountryInfo.dart';

List<CountryCard> CountryCards = [];

void addCountryCard(CountryCard country) {
  CountryCards.add(country);
}

void removeCountry(CountryCard country) {
  for (var i = 0; i < CountryCards.length; i++) {
    if (country.country.name == CountryCards[i].country.name) {
      CountryCards.removeAt(i);
    }
  }
}
