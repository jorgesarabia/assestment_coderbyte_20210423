String letterCount(String str) {
  String word = '-1';
  final texts = str.split(' ');
  int numeroLetras = -1;

  for (int x = 0; x < texts.length; x++) {
    final nLet = _letras(texts[x]);
    if (nLet > numeroLetras) {
      numeroLetras = nLet;
      word = texts[x];
    }
  }

  return word;
}

int _letras(String l) {
  final le = l.toLowerCase();
  int numberOfLetters = 1;
  String letter;
  for (int count = 0; count < le.length; count++) {
    final n = le.split(le[count]).length - 1;
    if (n > numberOfLetters) {
      numberOfLetters = n;
      letter = le[count];
    }
  }

  if (letter != null) {
    return numberOfLetters;
  }

  return -1;
}
