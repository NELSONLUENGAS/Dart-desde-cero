main() {
  // Operadores de asignación

  int a = 10;

  //Operador asignacion si es null
  int? b;

  b ??= 20;

  // Operador condicional
  int c = 23;

  String respuesta = c > 25 ? 'C es mayor a 25' : 'C es menor a 25';

  int d = b ?? a ?? 100;

  // Operadores relacionales (Boleanos)
  /**
   * > Mayor que 
   * < Menor que
   * >= Mayor igual
   * <= Meno Igual
   * 
   * == Revisa sin son iguales
   * != Revisa si son diferentes
   */

  String persona1 = 'Fernando';
  String persona2 = 'Pedro';

  print(persona1 == persona2);
  print(persona1 != persona2);

  // Operador de tipo (is)
  int i = 10;
  String j = '10';

  print(j is int);
}
