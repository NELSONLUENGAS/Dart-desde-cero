main() {
  bool loading = true;
  Future<String> timeout = Future.delayed(Duration(seconds: 3), () {
    print('3 segundos después');

    return 'Respuesta de Future';
  });

  timeout.then((response) {
    print(response);
    loading = false;
    print(loading);
  });
  print(loading);
}
