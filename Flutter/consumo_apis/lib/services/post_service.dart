import 'package:dio/dio.dart';

class PostService {


final Dio _dio = Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com'));



Future<List<dynamic>?> getPosts() async {
  try{
    final response = await _dio.get('/posts', options: Options(
      headers: {
        'User-Agent': 'FlutterApp/1.0'
      }
    ));

    if(response.statusCode == 200){
      return response.data;
    } 
      print('Error en la peticion');
      return null;
  } on DioException catch(error){
    print('el error es: $error');
    return null;
  }
}


}