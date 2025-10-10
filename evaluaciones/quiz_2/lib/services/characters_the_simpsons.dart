import 'package:dio/dio.dart';
import 'package:quiz_2/models/character.dart';

class CharactersTheSimpsons {
  final Dio _dio = Dio(BaseOptions(
    baseUrl: 'https://thesimpsonsapi.com'
  ));


  Future<PaginatedCharacters> getAllCharacters() async {
    try {
      final response = await _dio.get('/api/characters');
      return PaginatedCharacters.fromJson(response.data); //response.statusCode as dynamic);
    } catch (e) {
      throw Exception('Error fetching characters: $e');
    }
  }

}

