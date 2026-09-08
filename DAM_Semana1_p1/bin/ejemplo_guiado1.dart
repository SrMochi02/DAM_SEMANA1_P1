import 'dart:io';

void main() {
  final notas = <double>[8.5, 6.0, 9.2, 7.8];

  final aprobadas = notas.where((nota) => nota >= 7).toList();

  final suma = notas.fold(0.0, (acumulado, nota) => acumulado + nota);

  final promedio = suma / notas.length;

  print('Aprobadas: $aprobadas');
  print('Promedio: ${promedio.toStringAsFixed(2)}');
}
