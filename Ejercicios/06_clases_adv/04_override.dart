class Persona {
  final String nombre;
  final int edad;

  Persona(this.nombre, this.edad);

  void imprimirNombre() => print('Nombre: $nombre Edad: $edad');
}

class Cliente extends Persona {
  final String direccion = '';
  final List ordenes = [];

  Cliente(String nombre, int edad) : super(nombre, edad);

  @override
  void imprimirNombre() {
    super.imprimirNombre();
    print('Cliente: $nombre ($edad)');
  }
}

main() {
  final nelson = new Cliente('Nelson', 24);

  nelson.imprimirNombre();
}
