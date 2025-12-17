mixin Logger {
  void imprimir(String texto) {
    final hoy = DateTime.now();

    print('$hoy ::: $texto');
  }
}

mixin Logger2 {
  void imprimir2(String texto) {
    final hoy = DateTime.now();

    print('$hoy ::: $texto');
  }
}

abstract class Astro with Logger {
  final String nombre;

  Astro(this.nombre) {
    imprimir('-- Init del Astro --');
  }

  void existo() {
    imprimir('-- Pienso luego existo --');
  }
}

class Asteroide extends Astro with Logger, Logger2 {
  Asteroide(String nombre) : super(nombre) {
    imprimir('Soy $nombre');
    imprimir2('Soy $nombre');
  }
}

main() {
  final ceres = new Asteroide('Ceres');
}
