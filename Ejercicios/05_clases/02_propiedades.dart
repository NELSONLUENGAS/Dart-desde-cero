class Cuadrado {
  final int lado;
  final int _area;

  int get area => this._area;

  Cuadrado(int lado) : this.lado = lado, this._area = lado * lado;
}

main() {
  final cuadrado = new Cuadrado(20);

  print(cuadrado.area);
}
