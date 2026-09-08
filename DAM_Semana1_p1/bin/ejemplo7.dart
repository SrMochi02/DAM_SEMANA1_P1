import 'dart:io';

//funcion
double convertirCelsiusAfarenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}

void main() {
  stdout.write('Ingrese la temperatura en grados celsius: ');
  double celsius = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  double fahrenheit = convertirCelsiusAfarenheit(celsius);

  print(
    '${celsius.toStringAsFixed(2)} °C equivalen a'
    '${fahrenheit.toStringAsFixed(2)} °F.'
  );

}