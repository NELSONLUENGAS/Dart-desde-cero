import 'dart:io';

main() {
  stdout.writeln('¿Cuál es tu edad?');

  int edad = int.parse(stdin.readLineSync() ?? '0');

  if (edad >= 21) {
    stdout.writeln('Eres ciudadano');
  } else if (edad >= 18) {
    stdout.writeln('Eres mayor de edad');
  } else {
    stdout.writeln('No eres mayor de edad');
  }
}
