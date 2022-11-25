part of 'country_picker.dart';

@immutable
class Country {
  /// objeto construtor para carregar os dados de um país
  final String name;
  final String initials;
  final String dialCode;

  const Country(
      {required this.name, required this.initials, required this.dialCode});

  factory Country.fromMap(Map<String, String> countryData) {
    return Country(
      name: countryData[countryData.countryName]!,
      initials: countryData[countryData.countryInitials]!,
      dialCode: countryData[countryData.countryDialCode]!,
    );
  }

  factory Country.fromInitial(String initial) {
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
      throw 'País não localizado';
    }
  }
}

extension ImplementFlagAddress on Country {
  // ignore: unnecessary_this
  String get flagAddress => 'assets/flags/${this.initials.toLowerCase()}.png';
}
