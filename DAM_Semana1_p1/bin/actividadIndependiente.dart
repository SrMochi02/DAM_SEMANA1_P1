import 'dart:developer';
import 'dart:io';

double calcularPromedio(double n1, double n2, double n3) {
  return (n1 + n2 + n3) / 3;
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
  stdout.write('Ingrese porcentaje de asistencia (0-100): ');
  double asistencia = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  if (asistencia < 0 || asistencia > 100) {
    print('Error: La asistencia debe estar entre 0 y 100.');
    return;
  }

  stdout.write('Ingrese correo electronico (opcional)');
  String? correo = stdin.readLineSync();

  if (correo == null || correo.trim().isEmpty) {
    correo = 'No registrado';
  }
  double promedio = calcularPromedio(n1, n2, n3);
  String estado = determinarEstado(promedio, asistencia);
  String recomendacion = generarRecomendacion(promedio, asistencia);
  print('\n==========================================');
  print(' REPORTE ACADEMICO');

  print('Nombre : $nombre');
  print('Codigo : $codigo');
  print('Correo : $correo');
  print('Calificacion 1 : ${n1.toStringAsFixed(2)}');
  print('Calificacion 2 : ${n2.toStringAsFixed(2)}');
  print('Calificacion 3 : ${n3.toStringAsFixed(2)}');
  print('Promedio : ${promedio.toStringAsFixed(2)}');
  print('Asistencia : ${asistencia.toStringAsFixed(2)}%');
  print('Estado : $estado');
  print('Recomendacion : $recomendacion');
}
