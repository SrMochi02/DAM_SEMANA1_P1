import 'dart:io';

void main() {
  const double iva = 0.13;
  double compra = 85.00;
  bool poseeMembresia = true;

  double descuento = poseeMembresia ? compra * 0.10 : 0;
  double subtotal = compra - descuento;
  double total = subtotal * (1 + iva);

  String estado = total >= 100 ? 'Compra mayor' : 'Compra regular';

  print('Descuento: ${descuento.toStringAsFixed(2)}');
  print('Total: ${total.toStringAsFixed(2)}');
  print(estado);
}
