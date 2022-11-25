part of 'country_picker.dart';

@immutable
class Labels extends StatelessWidget {
  /// widget que exibirá o tipo label selecionada
  const Labels({Key? key, required this.countryPicker}) : super(key: key);

  final CountryPicker countryPicker;

  @override
  Widget build(BuildContext context) {
    /// Essa variável 'initial' será usada em um único lugar, mais
    /// será usada para processar e verificar multiplas vezes até que o país seja localizado
    final String initial = countryPicker.initialCodeCountry.toUpperCase();
    late final Country country;

    /// verificar se o país existe pela sigla, se existir criar uma instância de [Country]
    /// e retornar um widget
    if (Countries.i.list.any((map) {
      if (map.values.contains(initial)) {
        country = Country.fromMap(map);
        return true;
      } else {
        return false;
      }
    })) {
      switch (countryPicker.labelType) {
        case LabelType.onlyName:
          return Text(
            country.name,
            style: countryPicker.textStyle,
          );
        case LabelType.onlyFlag:
          return FlagBuilder(
            image: country.flagAddress,
            size: countryPicker.flagSize,
            padding: countryPicker.paddingOnFlag ?? const EdgeInsets.all(0.0),
            borderRadius: countryPicker.borderRadiusOnFlag!,
          );
        case LabelType.onlyInitials:
          return Text(
            country.initials,
            style: countryPicker.textStyle,
          );
        case LabelType.onlyDialCode:
          return Text(
            country.dialCode,
            style: countryPicker.textStyle,
          );
        case LabelType.flagWithName:
          return Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlagBuilder(
                image: country.flagAddress,
                size: countryPicker.flagSize,
                padding: countryPicker.paddingOnFlag ??
                    const EdgeInsets.only(right: 12.0),
                borderRadius: countryPicker.borderRadiusOnFlag!,
              ),
              Text(
                country.name,
                style: countryPicker.textStyle,
              ),
            ],
          );
        case LabelType.flagWithDialCode:
          return Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlagBuilder(
                image: country.flagAddress,
                size: countryPicker.flagSize,
                padding: countryPicker.paddingOnFlag ??
                    const EdgeInsets.only(right: 12.0),
                borderRadius: countryPicker.borderRadiusOnFlag!,
              ),
              Text(
                country.dialCode,
                style: countryPicker.textStyle,
              ),
            ],
          );
        case LabelType.flagWithInitials:
          return Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlagBuilder(
                image: country.flagAddress,
                size: countryPicker.flagSize,
                padding: countryPicker.paddingOnFlag ??
                    const EdgeInsets.only(right: 12.0),
                borderRadius: countryPicker.borderRadiusOnFlag!,
              ),
              Text(
                country.initials,
                style: countryPicker.textStyle,
              ),
            ],
          );
        default:
          return const CountryNotLocated();
      }
    } else {
      return const CountryNotLocated();
    }
  }
}

class CountryNotLocated extends StatelessWidget {
  const CountryNotLocated() : super(key: null);
  @override
  Widget build(BuildContext context) {
    return const Text(
      'País não localizado',
      style: TextStyle(
        color: Color(0xFFF44336),
      ),
    );
  }
}
