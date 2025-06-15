import '../../core/core.dart';
import '../domain.dart';

abstract class AuthRepository {
  Future<Result<AccessToken>> register({
    required String username,
    required String password,
  });
  Future<Result<AccessToken>> login({
    required String username,
    required String password,
  });
  Future<Result<UserProfile>> getUserProfile();
}
