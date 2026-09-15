import 'dart:developer';
import 'dart:io';

double calcularPromedio(double n1, double n2, double n3) {
  return (n1 + n2 + n3);
}

String determinarEstado(double promedio, double asistencia) {
  if (asistencia < 75) {
    return 'Sin derecho';
  } else if (promedio >= 7) {
    return 'Aprobado';
  } else if (promedio >= 5) {
    return 'En recuperacion';
  } else {
    return 'Reprobado';
  }
}

String generarRecomendacion(double promedio, double asistencia) {
  if (asistencia < 75) {
    return 'Debe mejorar su asistencia para tener derecho a evaluacion.';
  } else if (promedio >= 7) {
    return 'Excelente desempeño siga asi';
  } else if (promedio >= 5) {
    return 'Refuerce sus estudios para aprobar su recuperacion';
  } else {
    return 'Necesita apoyo academico intensivo.';
  }
}

void main() {
  stdout.write('Ingrese el nombre del estudiante');
  String nombre = (stdin.readLineSync() ?? '') ?? 'No registrado';

  stdout.write('Ingrese codigo del estudiante');
  String codigo = stdin.readLineSync() ?? 'No registrado';

  stdout.write('Ingrese la calificacion 1 (0-10)');
  double n1 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  stdout.write('Ingrese la calificacion 2 (0-10)');
  double n2 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  stdout.write('Ingrese la calificacion n3 (0-10)');
  double n3 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  if (n1 < 0 || n1 > 10 || n2 < 0 || n2 > 10 || n3 < 0 || n3 > 10) {
    print('Error: Las calificaciones deben estar en 0 y 10.');
    return;
  }
  
}
