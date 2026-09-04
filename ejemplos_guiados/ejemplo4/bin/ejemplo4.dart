import 'dart:io';

void main() {
  stdout.write('Ingrese una calificacion entre 0 y 10: ');
  double? calificacion = double.tryParse(stdin.readLineSync() ?? '');

  if (calificacion == null || calificacion < 0 || calificacion > 10) {
    print('La calificacion ingresada no es valida');
    return;
  }

  if (calificacion >= 9) {
    print('Categoria: Excelente');
  } else if (calificacion >= 8) {
    print('Categoria: muy bueno');
  } else if (calificacion >= 7) {
    print('Cateogira: bueno');
  } else if (calificacion >= 6) {
    print('Categoria: aprobado');
  } else {
    print('Cateogira: Reprobado');
  }
}
