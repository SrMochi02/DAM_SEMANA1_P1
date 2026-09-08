import 'dart:io';

double calcularPromedio(double n1, double n2, double n3) {
  return (n1 + n2 + n3) / 3;
}

String obtenerEstado({required double promedio, required double asistencia}) {
  if (asistencia < 75) return 'Sin derecho';
  if (promedio >= 7) return 'Aprobado';
  if (promedio >= 6) return 'En recuperacion';
  return 'Reprobado';
}

void main() {
  final promedio = calcularPromedio(8.5, 6.5, 9.0);
  final estado = obtenerEstado(promedio: promedio, asistencia: 82);

  print('Promedio: ${promedio.toStringAsFixed(2)}');
  print('Estado: $estado');
}
