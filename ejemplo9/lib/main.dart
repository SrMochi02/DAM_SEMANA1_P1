import 'dart:io';

void main() {
  final Map<String, int> inventario = {
    'P001': 15,
    'P002': 8,
    'P003': 22,
    'P004': 0,
  };

  print('--- inventario disponible');
  inventario.forEach((codigo, existencia) {
    print('$codigo : $existencia unidades');
  });

  stdout.write('\n Ingrese el codigo de el producto que desea para continuar');
  final String codigoBuscado = stdin.readLineSync()?.trim().toUpperCase() ?? '';

  final int? existencia = inventario[codigoBuscado];

  if (existencia == null) {
    print('El producto no esta registrado');
  } else if (existencia == 0) {
    print('El producto $codigoBuscado está agotado');
  } else {
    print('El producto $codigoBuscado tiene $existencia unidades disponibles.');
  }
}
