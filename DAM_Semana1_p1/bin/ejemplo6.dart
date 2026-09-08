import 'dart:io';

void main() {
  stdout.write('Ingrese el numero entero positivo');
  int limite = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  if (limite <= 0) {
    print('Debe ingresar un numero mayor a 0.');
    return;
  }

  int numeroActual = 2;
  int suma = 0;

  while (numeroActual <= limite) {
    suma += numeroActual;
    numeroActual += 2;
  }

  print('La suma de los numeros pares entre 1 y $limite es: $suma');
}
