import 'dart:io';

String recibirParametros(String usuario, String contrasenia, bool estado) {
  if (usuario.isEmpty || contrasenia.isEmpty) {
    return 'Error los parametros ingresados no pueden estar vacios';
  }

  const String usuarioRegistrado = 'admin1234';
  const String contraseniaRegistrada = 'bienvenido1234';

  if (usuario != usuarioRegistrado || contrasenia != contraseniaRegistrada) {
    return 'Error contraseña incorrecta';
  } else if (!estado) {
    return 'Error: El usuario esta inactivo';
  } else {
    return 'Acceso concedido';
  }
}

void main() {
  stdout.write('Ingrese el usuario');
  String usuario = (stdin.readLineSync() ?? '') ?? '';

  stdout.write('Ingrese la contraseña');
  String contrasenia = (stdin.readLineSync() ?? '') ?? '';

  bool estado = true;

  String paramsRecibidos = recibirParametros(usuario, contrasenia, estado);

  print(paramsRecibidos);
}
