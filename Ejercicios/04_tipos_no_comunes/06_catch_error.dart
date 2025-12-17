main() {
  bool loading = true;
  Future<String> timeout = Future.delayed(Duration(seconds: 3), () {
    if (1 == 1) {
      throw 'Auxilio, explotó esta cosa';
    }

    return 'Respuesta de Future';
  });

  timeout
      .then((response) {
        print(response);
        loading = false;
        print(loading);
      })
      .catchError((error) {
        print(error);
      });
  print(loading);
}
