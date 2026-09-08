import 'dart:io';

void main() {
  stdout.write('Ingrese el numero');
  int numero = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  if (numero > 0) {
    print('El numero es positivo');
  } else if (numero < 0) {
    print('EL numero es negativo');
  } else {
    print('EL numero es igual a cero');
  }

  if (numero % 2 == 0) {
    print('Es numero par');
  } else {
    print('El numero es impar');
  }
}
