import 'package:flutter/material.dart';
import 'package:countries_label/countries_label.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CountryPicker'),
      ),
      body: Center(
        child: CountryPicker(
          initialCodeCountry: 'BR',
          labelType: LabelType.flagWithName,
          onSelectedCountry: (country) {
            print(country.name);
          },  
          borderRadiusOnFlag: BorderRadius.circular(10),   
          flagSize: const Size(60, 45),
          textStyle: const TextStyle(
            fontSize: 30
          ),
        ),
      ),
    );
  }
}
