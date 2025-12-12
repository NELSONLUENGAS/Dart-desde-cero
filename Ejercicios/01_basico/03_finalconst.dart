import 'dart:async';

main() {
  //  ==== Final y const

  var a = 10;
  final double b = 10.2; //se puede modificar con los metodos
  const double c = 10; //No se puede modificar ; Es más ligera

  late final double x; //Permite inicializar después

  x = 24;

  final List<String> personasFinal = ['Juan', 'Pedro', 'Fernando'];
  const List<String> personasConst = ['Juan', 'Pedro', 'Fernando'];

  personasFinal.add('María');

  // personasConst.add('María'); //Da error

  print({personasFinal, personasConst});
  print(x);
}
