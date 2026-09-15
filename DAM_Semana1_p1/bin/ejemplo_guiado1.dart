import 'dart:io';

void main() {
  String nombre = 'Maria';
  int edad = 19;
  double promedio = 8.7;
  bool activo = true;
  String? correo;
  final correoVisible = correo ?? 'No Registrado';
  print('Estudiand: $nombre');
  print('Edad: $edad ');
  print('Promedio: ${promedio.toStringAsFixed(2)}');
  print('Activo: $activo');
  print('Correo: $correoVisible');
}
