import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../core.dart';

@injectable
class AuthTokenStorage {
  AuthTokenStorage(this._secureStorage);
  final FlutterSecureStorage _secureStorage;
  Future<String?> getToken() async {
    try {
      return await _secureStorage.read(key: 'auth_token');
    } catch (e) {
      logger.e('Error retrieving token: $e');
      return null;
    }
  }

  Future<void> saveToken(String token) async {
    try {
      await _secureStorage.write(key: 'auth_token', value: token);
    } catch (e) {
      logger.e('Error saving token: $e');
    }
  }

  Future<void> deleteToken() async {
    try {
      await _secureStorage.delete(key: 'auth_token');
    } catch (e) {
      logger.e('Error deleting token: $e');
    }
  }
}
