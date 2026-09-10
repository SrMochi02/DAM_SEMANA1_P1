void main() {
  int numero = 10;
  double divisor = 0;
  double? resultado;

  if (numero < 5) { // condición invertida
    resultado = numero / divisor; // división por cero y división entera no deseada
  }

  String x = "Hola"; // nombre poco descriptivo
  print(x);
  print(resultado); // variable nullable sin tratamiento
}
