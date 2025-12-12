import 'dart:io';

main() {
  stdout.writeln('Cual es la base de la tabla');

  int base = int.parse(stdin.readLineSync() ?? '2');

  for (int i = 1; i <= 10; i++) {
    print('$base * $i = ${base * i}');
  }
}
