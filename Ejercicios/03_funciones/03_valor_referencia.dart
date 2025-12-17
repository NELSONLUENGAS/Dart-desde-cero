String capitalizar(String texto) {
  texto = texto.toUpperCase();
  return texto;
}

Map<String, String> capitalizarMapa(Map<String, String> mapa) {
  mapa['nombre'] = capitalizar(mapa['nombre']!);
  return mapa;
}

void main(List<String> args) {
  String nombre = 'Pedro';
  String nombre2 = capitalizar('Pedro');

  Map<String, String> persona = {'nombre': 'Tony'};

  Map<String, String> persona2 = capitalizarMapa({...persona});

  print(persona);
  print(persona2);
}
