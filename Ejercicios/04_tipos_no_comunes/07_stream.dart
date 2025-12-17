import 'dart:async';

main() {
  // Stream de una sola subscripción
  final streamController =
      new StreamController<String>.broadcast(); //Multiples subscripciones

  streamController.stream.listen(
    (data) => print('Despegando $data'),
    onError: (error) => print('Error $error'),
    onDone: () => print('Misión Completa'),
    cancelOnError: false,
  );

  streamController.stream.listen(
    (data) => print('Despegando $data'),
    onError: (error) => print('Error $error'),
    onDone: () => print('Misión Completa'),
    cancelOnError: false,
  );

  streamController.sink.add('Apollo 11');
  streamController.sink.add('Apollo 12');
  streamController.sink.addError('Tenemos un problema');
  streamController.sink.add('Apollo 13');
  streamController.sink.add('Apollo 14');

  streamController.sink.close();

  print('Fin del main');
}
