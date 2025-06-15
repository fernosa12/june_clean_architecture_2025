import 'package:injectable/injectable.dart';
import '../../core/core.dart';
import '../../domain/domain.dart';
import '../datasources/auth/auth_datasources.dart';

@LazySingleton(as: AuthRepository)
class AuthRepsitoryImpl implements AuthRepository {
  const AuthRepsitoryImpl(this._authDatasource);
  final AuthDatasource _authDatasource;

  @override
  Future<Result<AccessToken>> register({
    required String username,
    required String password,
  }) async {
    try {
      final response = await _authDatasource.register(
        RegisterDto(username: username, password: password),
      );
      if (response.success) {
        return Result.success(response.data!);
      } else {
        return Result.failure(response.message ?? 'Registration failed');
      }
    } catch (e) {
      return Result.failure('Failed to register: $e');
    }
  }

  @override
  Future<Result<AccessToken>> login({
    required String username,
    required String password,
  }) async {
    try {
      final response = await _authDatasource.login(
        LoginDto(username: username, password: password),
      );
      if (response.success) {
        return Result.success(response.data!);
      } else {
        return Result.failure(response.message ?? 'Login failed');
      }
    } catch (e) {
      return Result.failure('Failed to Login: $e');
    }
  }

  @override
  Future<Result<UserProfile>> getUserProfile() async {
    try {
      final response = await _authDatasource.getProfile();
      if (response.success) {
        return Result.success(response.data!);
      } else {
        return Result.failure(response.message ?? 'Login failed');
      }
    } catch (e) {
      return Result.failure('Failed to Login: $e');
    }
  }

  // @override
  // Future<Result<void>> syncWithServer() {
  //   // TODO: implement syncWithServer
  //   throw UnimplementedError();
  // }
}
