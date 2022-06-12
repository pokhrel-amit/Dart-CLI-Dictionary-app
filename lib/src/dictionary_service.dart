import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_dictionary/src/dictionary_class.dart';

class DictionaryService {
  final _apiUrl = 'https://api.dictionaryapi.dev/api/v2/entries/en/';

  Future<Dictionary> getData(String word) async {
    final response = await http.get(Uri.parse('$_apiUrl$word'));
    try {
      final Dictionary _dict = Dictionary.fromMap(jsonDecode(response.body));
      return _dict;
    } catch (e) {
      throw Exception(e);
    }
  }
}
