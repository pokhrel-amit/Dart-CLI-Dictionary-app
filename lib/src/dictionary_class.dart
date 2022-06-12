class Dictionary {
  final String word;
  final String meaning;
  final String example;

  Dictionary({
    required this.word,
    required this.meaning,
    required this.example,
  });

  static fromMap(List json) {
    return Dictionary(
      word: json.first['word'],
      meaning: (json.first['meanings'].first['definitions'].first['definition']).split('.').first,
      example: json.first['meanings'].first['definitions'].first['example'],
    );
  }

  @override
  String toString() => '''
  Word = $word
  Meaning = $meaning
  Example = $example
''';
}
