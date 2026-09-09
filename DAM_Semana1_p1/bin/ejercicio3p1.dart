import 'dart:io';

void main() {
  const double iva = 0.13;
  double precioUnitario = 1.00;
  int cantidadProductos = 15;
  bool membresia = false;

  double subtotal = precioUnitario * cantidadProductos;
  double porcentajeDescuento = 0.0;

  if (subtotal > 100) {
    porcentajeDescuento += 0.05;
  } else {
    print('La compra no supera el 100 de subtotal no aplica descuento');
  }

  if (membresia == true) {
    porcentajeDescuento += 0.03;
  } else {
    print('no tiene membresia no aplica el descuento');
  }

  if (porcentajeDescuento >= 0.15) {
    print('Ha excedido el limite de descuento');
  }

  double montoDescuento = subtotal * porcentajeDescuento;
  double subtotalConDescuento = subtotal - montoDescuento;
  double montoIVA = subtotalConDescuento * iva;
  double total = subtotalConDescuento + montoIVA;

  print('Subtotal inicial: \$${subtotal.toStringAsFixed(2)}');
  print(
    'Descuento aplicado (${(porcentajeDescuento * 100).toInt()}%): -\$${montoDescuento.toStringAsFixed(2)}',
  );
  print('Subtotal gravable: \$${subtotalConDescuento.toStringAsFixed(2)}');
  print('Impuesto IVA (13%): \$${montoIVA.toStringAsFixed(2)}');
  print('Total a pagar: \$${total.toStringAsFixed(2)}');
}
