import 'dart:io';

main() {
  // imprime en terminal
  stdout.writeln('¿Escribe tu nombre?');

  // Leer información
  String? nombre = stdin.readLineSync();

  print('Hola $nombre');
}
