enum TipoRectangulo { cuadrado, rectangulo }

class Rectangulo {
  final int base;
  final int altura;
  final int area;
  final TipoRectangulo tipo;

  Rectangulo._(this.base, this.altura, this.tipo) : area = base * altura;

  factory Rectangulo(int base, int altura) {
    if (base == altura) {
      return Rectangulo._(base, base, TipoRectangulo.cuadrado);
    } else {
      return Rectangulo._(base, altura, TipoRectangulo.rectangulo);
    }
  }

  @override
  String toString() => {
    'base': base,
    'altura': altura,
    'area': area,
    'tipo': tipo.name,
  }.toString();
}

main() {
  final figura = new Rectangulo(23, 23);

  print(figura);
}
