part of 'country_picker.dart';

@immutable
class Country {
  /// Classe construtora para carregar os dados de um país
  ///
  /// Caso a sigla passada no construtor factory [Country.fromInitial]
  /// não exista dentro da list [Countries] ao invés executar uma [throw] e gerar um erro,
  /// será retornado uma map com parâmentros undefined
  ///
  const Country({
    required this.name,
    required this.initials,
    required this.dialCode,
  });

  final String name;
  final String initials;
  final String dialCode;

  factory Country.fromMap(Map<String, String> countryData) {
    return Country(
      name: countryData[countryData.countryName]!,
      initials: countryData[countryData.countryInitials]!,
      dialCode: countryData[countryData.countryDialCode]!,
    );
  }

  factory Country.fromInitial(String initial) {
    /// Obter os dados de uma país pela sigla
    /// EX: final Country country = Country.fromInitial("BR");
    assert(initial.isNotEmpty, 'Insira a sigla do país');

    initial = initial.toUpperCase();

    late Country country;

    if (Countries.i.list.any((map) {
      if (map.values.contains(initial)) {
        country = Country.fromMap(map);
        return true;
      } else {
        return false;
      }
    })) {
      return country;
    } else {
      printLog('País não localizado');
      return Country.fromMap(Countries.i.list[0]);
    }
  }
}

extension ImplementFlagAddress on Country {
  // ignore: unnecessary_this
  String get flagAddress => 'assets/flags/${this.initials.toLowerCase()}.png';
}
