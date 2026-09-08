import 'dart:io';

void main() {
  int? edad;

  do {
    stdout.write('Ingrese la edad: ');
    edad = int.tryParse(stdin.readLineSync() ?? '') ?? -1;

    if (edad <= 0 || edad >= 120) {
      print(
        'La edad no puede ser 0 o menor a 0, tampoco mayor a 120 porfavor ingrese una edad valida.',
      );
    }
  } while (edad <= 0 || edad >= 120);

  print('el bucle se detuvo bien ');

  if (edad >= 60) {
    print('Categoria: Adulto Mayor');
  } else if (edad >= 18) {
    print('Cateogira: Adulto');
  } else if (edad >= 13) {
    print('Categoria: Adolescencia');
  } else {
    print('Cateogira: Niñez');
  }
}
