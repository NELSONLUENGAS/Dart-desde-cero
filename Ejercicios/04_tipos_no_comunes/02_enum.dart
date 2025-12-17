main() {
  Audio volumen = Audio.alto;

  switch (volumen) {
    case Audio.bajo:
      print('Volumen Bajo');
      break;
    case Audio.medio:
      print('Volumen Medio');
      break;
    case Audio.alto:
      print('Volumen Alto');
      break;
  }
}

enum Audio { bajo, medio, alto }
