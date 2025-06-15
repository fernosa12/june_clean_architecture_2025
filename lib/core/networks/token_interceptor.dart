import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'auth_token_storage.dart';

@injectable
class AuthInterceptor extends Interceptor {
  AuthInterceptor(this._tokenStorage);
  final AuthTokenStorage _tokenStorage;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await _tokenStorage.getToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      // Handle token refresh
      final newToken = await _refreshToken();
      if (newToken != null) {
        err.requestOptions.headers['Authorization'] = 'Bearer $newToken';

        // Retry the request
        final cloneReq = await Dio().fetch(err.requestOptions);
        return handler.resolve(cloneReq);
      }
    }
    handler.next(err);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.data != null && response.data is Map<String, dynamic>) {
      final data = response.data as Map<String, dynamic>;
      if (data.containsKey('access_token')) {
        _tokenStorage.saveToken(data['access_token'] as String);
      }
    }
    handler.next(response);
  }

  Future<String?> _refreshToken() async {
    // Implement token refresh logic
    return null;
  }
}
