import 'package:injectable/injectable.dart';

import '../../core/core.dart';
import '../domain.dart';

@injectable
class AuthUsecase {
  final AuthRepository _repository;
  const AuthUsecase(this._repository);
  Future<Result<AccessToken>> login(String username, String password) async {
    final result = await _repository.login(
      username: username,
      password: password,
    );
    return result;
  }
}
