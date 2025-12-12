main() {
  //  ====== Números
  int a = 10;
  double b = 5.5;
  int? c;

  print(c);

  //  ==== Strings

  String nombre = "Tony";
  String apellido = "$nombre James's";
  String multilinea = '''
  Hola que tal todo 
  Saludos desde la dirección
  $apellido
  ''';

  print({nombre, apellido, multilinea});

  //  ==== Booleans

  bool isActive = false;
  bool valor = false & true;

  print({!isActive, valor});

  //  === Lists Lista de datos que tienene algo en común

  List<String> villanos = ['Lex', 'Red Skull', 'Doom'];

  List<String> villanosSet = villanos.toSet().toList();

  print(villanosSet.toList());
  //  ===Sets no tienen duplicados
  Set<String> villanos2 = {'Lex', 'Red Skull', 'Doom'};
  villanos[0];

  // ===== Maps

  Map<String, dynamic> ironman = {
    'nombre': 'Tony Stark',
    'poder': 'Inteligencia y dinero',
    'nivel': 9000
  };

  print(ironman['nivel']);

  Map<String, dynamic> capitan = new Map();

  capitan.addAll(
      {'nombre': 'Steve', 'poder': 'Soportar droga sin morir', 'nivel': 5000});

  capitan.addAll(ironman);
}
