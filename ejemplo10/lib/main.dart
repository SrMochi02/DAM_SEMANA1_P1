import 'dart:io';

class Producto {
  final String codigo;
  final String nombre;
  final double precio;
  int cantidad;

  Producto({
    required this.codigo,
    required this.nombre,
    required this.precio,
    required this.cantidad,
  });

  double get valorInventario => precio * cantidad;

  void mostarInformacion() {
    print('\n--- Informacion del producto ---');
    print('Codigo: $codigo');
    print('Nombre: $nombre');
    print('Precio unitario: \$${precio.toStringAsFixed(2)}');
    print('Cantidad disponible: $cantidad');
    print(
      'Valor total del inventario:'
      '\$${valorInventario.toStringAsFixed(2)}',
    );
  }
}

void main() {
  stdout.write('Ingrese el codigo del producto: ');
  String codigo = stdin.readLineSync()?.trim() ?? 'SIN-CODIGO';

  stdout.write('Ingrese el nombre del producto: ');
  String nombre = stdin.readLineSync()?.trim() ?? 'Sin nombre';

  stdout.write('Ingrese el precio unitario');
  double precio = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  stdout.write('Ingrese la cantidad disponible: ');
  int cantidad = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  Producto producto = Producto(
    codigo: codigo,
    nombre: nombre,
    precio: precio,
    cantidad: cantidad,
  );

  producto.mostarInformacion();
}
