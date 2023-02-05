class CountryInfo {
  String capital;
  String name;
  String population;
  String currency;
  String language;
  String alphaCode;
  String advisoryScore;
  String advisoryMessage;

  CountryInfo({
    this.alphaCode = '',
    this.capital = '',
    this.name = '',
    this.population = '',
    this.currency = '',
    this.language = '',
    this.advisoryScore = '',
    this.advisoryMessage = '',
  });

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
