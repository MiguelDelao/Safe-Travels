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
    this.alphaCode = 'USA',
    this.capital = 'Washington D.C.',
    this.name = 'United States',
    this.population = '329484123',
    this.currency = 'United States dollar',
    this.language = 'English',
    this.advisoryScore = '2.7',
    this.advisoryMessage =
        'United States has a current risk level of 2.7(out of 5). We advise: Use some caution when travelling United States.',
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
