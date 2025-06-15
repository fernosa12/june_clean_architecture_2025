// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:template_clean_architecture_june_2025/core/core.dart' as _i989;
import 'package:template_clean_architecture_june_2025/core/networks/auth_token_storage.dart'
    as _i737;
import 'package:template_clean_architecture_june_2025/core/networks/connectivity.dart'
    as _i267;
import 'package:template_clean_architecture_june_2025/core/networks/dio_client.dart'
    as _i32;
import 'package:template_clean_architecture_june_2025/core/networks/token_interceptor.dart'
    as _i333;
import 'package:template_clean_architecture_june_2025/data/datasources/auth/auth_datasources.dart'
    as _i606;
import 'package:template_clean_architecture_june_2025/data/repositories/auth_repository_impl.dart'
    as _i716;
import 'package:template_clean_architecture_june_2025/domain/domain.dart'
    as _i965;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final connectivityModule = _$ConnectivityModule();
    final dioModule = _$DioModule();
    gh.lazySingleton<_i895.Connectivity>(
      () => connectivityModule.connectivity(),
    );
    gh.factory<_i737.AuthTokenStorage>(
      () => _i737.AuthTokenStorage(gh<_i558.FlutterSecureStorage>()),
    );
    gh.factory<_i333.AuthInterceptor>(
      () => _i333.AuthInterceptor(gh<_i737.AuthTokenStorage>()),
    );
    gh.lazySingleton<_i361.Dio>(
      () => dioModule.dio(gh<_i989.AuthInterceptor>()),
    );
    gh.factory<_i606.AuthDatasource>(
      () => _i606.AuthDatasource(gh<_i361.Dio>(), baseUrl: gh<String>()),
    );
    gh.lazySingleton<_i965.AuthRepository>(
      () => _i716.AuthRepsitoryImpl(gh<_i606.AuthDatasource>()),
    );
    return this;
  }
}

class _$ConnectivityModule extends _i267.ConnectivityModule {}

class _$DioModule extends _i32.DioModule {}
