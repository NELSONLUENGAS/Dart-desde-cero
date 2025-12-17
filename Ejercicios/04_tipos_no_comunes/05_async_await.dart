import 'dart:io';

main() {
  String path = Directory.current.path;

  leerArchivo(path);
}

Future leerArchivo(String path) async {
  File fileDir = new File('$path/assets/personas.txt');

  return await fileDir.readAsString();
}
