import 'dart:io';

main() {
  obtenerUsuario(1500, 1);
  obtenerUsuario(1800, 2);
}

void obtenerUsuario(double salario, int i) {
  imprimir('=========== Usuario $i =============');

  imprimir('¿Cúal es su nombre?');
  String nombre = leer();

  imprimir('¿Qué edad tienes?');
  String edad = leer();

  imprimir('¿En qué país naciste?');
  String pais = leer();

  final Map<String, dynamic> usuario = {
    'nombre': nombre,
    'edad': edad,
    'pais': pais,
  };

  imprimir('Usuario $i sin deducciones');
  imprimir(usuario);

  double deducciones = salario * 0.15;
  double salarioNeto = salario - deducciones;

  usuario['salario'] = salario;
  usuario['deducciones'] = deducciones;
  usuario['salarioNeto'] = salarioNeto;

  imprimir(usuario);
}

void imprimir(dynamic mensaje) {
  stdout.writeln(mensaje);
}

String leer() => stdin.readLineSync() ?? '';
