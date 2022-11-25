## Widget

```dart
CountryPicker(
  initialCodeCountry: 'BR',
  labelType: LabelType.onlyFlag,
  onSelectedCountry: (country) {
    print(country.name);
  },  
  flagSize: const Size(60, 45),
),
```