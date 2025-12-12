void saludar(
  String mensaje, [
  String nombre = '<inserte nombre>',
  int edad = 20,
]) {
  print(mensaje);
}

void saludar2(String mensaje, {required String nombre, int veces = 5}) {
  print(mensaje);
}

main(List<String> args) {
  saludar('123');

  saludar2('Hola', nombre: 'Nelson', veces: 4);
}
