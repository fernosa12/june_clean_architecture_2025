import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../domain/domain.dart';
import '../../models/api_response/api_response.dart';
part 'auth_datasources.freezed.dart';
part 'auth_datasources.g.dart';

@RestApi()
@injectable
abstract class AuthDatasource {
  @factoryMethod
  factory AuthDatasource(Dio dio, {String baseUrl}) = _AuthDatasource;

  @POST('/auth/register')
  Future<ApiResponse<AccessToken>> register(@Body() RegisterDto registerDto);
  @POST('/auth/login')
  Future<ApiResponse<AccessToken>> login(@Body() LoginDto registerDto);
  @GET('/auth/me')
  Future<ApiResponse<UserProfile>> getProfile();
}

@freezed
sealed class RegisterDto with _$RegisterDto {
  const RegisterDto._();
  const factory RegisterDto({
    required String username,
    required String password,
  }) = _RegisterDto;
  factory RegisterDto.fromJson(Map<String, dynamic> json) =>
      _$RegisterDtoFromJson(json);
}

@freezed
sealed class LoginDto with _$LoginDto {
  const LoginDto._();
  const factory LoginDto({required String username, required String password}) =
      _LoginDto;
  factory LoginDto.fromJson(Map<String, dynamic> json) =>
      _$LoginDtoFromJson(json);
}
