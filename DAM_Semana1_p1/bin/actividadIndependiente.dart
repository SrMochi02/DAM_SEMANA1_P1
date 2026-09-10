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
