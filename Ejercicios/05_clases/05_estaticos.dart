class Herramientas {
  static const List<String> listado = [
    'Martillo',
    'Llave Inglesa',
    'Desarmador',
  ];

  static void imprimirListado() => listado.forEach(print);
}

main() {
  // final herramientas = new Herramientas();

  // Herramientas.listado.forEach(print);

  Herramientas.imprimirListado();
}
