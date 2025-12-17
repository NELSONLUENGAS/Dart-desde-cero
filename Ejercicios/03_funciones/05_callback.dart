main() {
  obtenerUsuario('100', (Map persona) => print(persona));
}

void obtenerUsuario(String id, Function calllback) {
  Map usuario = {'id': id, 'nombre': 'Juan'};

  calllback(usuario);
}
