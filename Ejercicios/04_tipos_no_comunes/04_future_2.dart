import 'dart:io';

main() {
  String path = Directory.current.path;

  File fileDir = new File('$path/assets/personas.txt');

  // Async
  Future<String> fileAsync = fileDir.readAsString();

  fileAsync.then((response) => print(response));

  // Sync
  String file = fileDir.readAsStringSync();

  print({'sinc': file});
}
