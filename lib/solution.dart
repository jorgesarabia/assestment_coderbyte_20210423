String letterCount(String str) {
  final texts = str.split(' ');
  int numeroLetras = -1;
  _Letter letterClass = _Letter();

  for (int x = 0; x < texts.length; x++) {
    final nLet = _letras(texts[x]);
    if (nLet.numberOfLetters > numeroLetras) {
      letterClass = nLet;
      numeroLetras = letterClass.numberOfLetters;
      letterClass.word = texts[x];
    }
  }

  print(letterClass);

  return letterClass.word ?? '-1';
}

_Letter _letras(String l) {
  final le = l.toLowerCase();
  final letter = _Letter();
  for (int count = 0; count < le.length; count++) {
    final n = le.split(le[count]).length - 1;
    if (n > letter.numberOfLetters) {
      letter.numberOfLetters = n;
      letter.letter = le[count];
    }
  }

  if (letter.numberOfLetters > 1) {
    return letter;
  }

  return _Letter();
}

class _Letter {
  int numberOfLetters = -1;
  String letter;
  String word;

  @override
  String toString() {
    return """
      numberOfLetters: $numberOfLetters,
      letter: $letter,
      word: $word
    """;
  }
}
