String capitalizar(String texto) {
  texto = texto.toUpperCase();
  return texto;
}

String capitalizarMapa(Map<String, String> mapa) {
  mapa['nombre'] = capitalizar(mapa['nombre']!);
  return '';
}

void main(List<String> args) {
  String nombre = 'Pedro';
  String nombre2 = capitalizar('Pedro');

  Map<String, String> persona = {'nombre': 'Tony'};
}
