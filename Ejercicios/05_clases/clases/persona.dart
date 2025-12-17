class Persona {
  // Propiedades
  String nombre;
  late int edad;
  String? _bio;

  // Gets sets
  String get bio => _bio ?? 'No hay bio';

  void set bio(String bio) => _bio = bio;

  // Constructores
  Persona(this.nombre, {required this.edad});

  Persona.persona30(this.nombre) {
    this.edad = 30;
  }

  // metodos
  @override
  String toString() => '$nombre $edad $_bio';
}
