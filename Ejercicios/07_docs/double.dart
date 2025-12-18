main() {
  double number = 21;

  print('Firma: ${number.sign}');

  final persona = {'nombre': 'Nelson', 'edad': 23};

  persona.removeWhere((key, value) => key != 'nombre');

  print(persona);
}
