import 'package:flutter/material.dart';
import 'package:quiz_2/models/character.dart';
import 'package:quiz_2/services/characters_the_simpsons.dart';

class CharactersProvider  with ChangeNotifier {

  PaginatedCharacters? characters;
  final CharactersTheSimpsons _service = CharactersTheSimpsons();

  Future<void> loadCharacters() async {
    characters = await _service.getAllCharacters();
    notifyListeners();
  }

}