//conversor de temperaturas de celsius a Fahrenheits y a kelvins

import 'dart:io';

double celsiusAFarehnheits(double celsius) {
  double fahrenheits = (celsius * 1.8) + 32;
  return fahrenheits;
}

double celsiusAKelvins(double celsius) {
  double kelvins = celsius + 273.15;
  return kelvins;
}

void main() {
  double tempCelsius = 36.00;
  final conversorAFahrenheits = celsiusAFarehnheits(tempCelsius);
  final conversorAKelvins = celsiusAKelvins(tempCelsius);

  print('Temperatura en celsius: ${tempCelsius.toStringAsFixed(2)}C°');
  print(
    'Temperatura en Fahrenheits: ${conversorAFahrenheits.toStringAsFixed(2)}F°',
  );
  print('Temperatura en Kelvins : ${conversorAKelvins.toStringAsFixed(2)}K°');
}
