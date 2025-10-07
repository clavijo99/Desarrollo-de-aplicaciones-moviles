import 'package:consumo_apis/models/post_model.dart';
import 'package:dio/dio.dart';

class PostService {
  final Dio _dio = Dio(
    BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com'),
  );

  Future<List<PostModel>?> getPosts() async {
    try {
      final response = await _dio.get(
        '/posts',
        options: Options(headers: {'User-Agent': 'FlutterApp/1.0'}),
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((e) => PostModel.fromJson(e)).toList();
      }
      print('Error en la peticion');
      return null;
    } on DioException catch (error) {
      print('el error es: $error');
      return null;
    }
  }

  Future<PostModel?> createPost(PostModel post) async {
    try {
      final response = await _dio.post(
        '/posts',
        data: post.toJson(),
        options: Options(headers: {'User-Agent': 'FlutterApp/1.0'}),
      );

      if (response.statusCode == 201){
        print('Post creado: ${response.data}');
        return PostModel.fromJson(response.data);
      } else {
        print('Error en la peticion');
        return null;
      }

    } on DioException catch (error) {
      print('el error es: $error');
      return null;
    }
  }
}
