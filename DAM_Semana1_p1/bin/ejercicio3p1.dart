import 'dart:developer';
import 'dart:io';

void main() {
  double iva = 0.13;
  double precioUnitario = 1.00;
  double cantidadProductos = 15;
  int acumulador = 0;
  double? subtotal;
  double? total;
  bool membresia = false;

  subtotal = precioUnitario * cantidadProductos;

  if (subtotal > 100) {
    subtotal = subtotal - (subtotal * 0.5);
    acumulador += 5;
  } else {
    print('La compra no supera el 100 de subtotal no aplica descuento');
  }

  if (membresia == true) {
    subtotal = subtotal - (subtotal * 0.3);
    acumulador += 3;
  } else {
    print('no tiene membresia no aplica el descuento');
  }

  if (acumulador >= 15) {
    print('Ha excedido el limite de descuento');
  }

  double subtotalIva = subtotal * iva;
  total = subtotal + subtotalIva;

  print('Subtotal: ${subtotal.toStringAsFixed(2)}');
  print('Impuesto IVA: ${subtotalIva.toStringAsFixed(2)}');
  print('Total: ${total.toStringAsFixed(2)}');
}
