main() {
  outerLoop:
  for (int i = 0; i < 10; i++) {
    print('Valor de i: $i \n');
    innerLoop:
    for (int j = 0; i < 10; j++) {
      print('Valor de j: $j \n');

      if (j == 2) break outerLoop;
    }
  }
}
