import 'package:consumo_apis/blocs/sesion_manager_provider.dart';
import 'package:consumo_apis/data/local/local_storage.dart';
import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  AuthInterceptor({
    required this.localStorage,
    required this.sessionManagerProvider,
    required this.dio,
  });

  final LocalStorage localStorage;
  final SessionManagerProvider sessionManagerProvider;
  final Dio dio;

  bool _isRefreshing = false;
  List<RequestOptions> _pendingRequest = [];

  final List<String> _whiteListEnponints = ['/api/autentication/login'];

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (!_whiteListEnponints.contains(options.path)) {
      final accessToken = await localStorage.getAccessToken();
      if (accessToken != null) {
        options.headers['Autorization'] = 'Bearer $accessToken';
      }
    }
    return handler.next(options);
  }

  Future<bool> _refreshToken() async {
    final token = await localStorage.getRefreshToken();

    if(token == null) return false;

    try{
      // TODO: crear el enpoint en el back
       final respone = await  dio.post(
        'http://localhost/api/authentication/refresh',
        data: {
          'refreshToken': token
        });
        if( respone.statusCode == 200 && respone.data['accessToken'] != null ){
          await localStorage.setAccessToken(respone.data['accessToken']);
          await localStorage.setRefeshToken(respone.data['refreshToken']);
          return true;
        }
        return false;
    } on DioException catch(err){
      print('error refreshToken interceptor $err');
      return false;
    }
  }

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    final options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );

    return dio.request<dynamic>(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }

  void _retryPendiengRequest() {
    for( var request in _pendingRequest ){
      _retry(request);
    }
    _pendingRequest.clear();
  }

}
