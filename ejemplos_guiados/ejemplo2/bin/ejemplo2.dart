import 'dart:io';

void main(){
  stdout.write('Ingrese el primer numero');
  double numero1 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  stdout.write('Ingrese el segundo numero');
  double numero2 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  print('\n --- Resultados ---');
  print('Suma ${numero1 + numero2}');
  print('Resta: ${numero1 - numero2}');
  print('Multiplicacion: ${numero1 * numero2}');

  if (numero2 != 0){
    print('Division: ${numero1 / numero2}');
    print('Residuo: ${numero1 % numero2}');

  }
  else {
    print('Division: No es posible realizar la operacion(no se puede dividir entre 0)');
    print('No se puede calcular con divisor 0');
  }


}