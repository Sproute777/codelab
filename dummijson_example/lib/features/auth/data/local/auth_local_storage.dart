import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const String _kToken = '_kSToken';

class AuthLocalStorage {
  const AuthLocalStorage([FlutterSecureStorage? storage])
      : _storage = storage ?? const FlutterSecureStorage();
  final FlutterSecureStorage _storage;

  Future<String?> getToken() async {
    return await _storage.read(key: _kToken);
  }

  Future<void> setToken(String token) async {
    await _storage.write(key: _kToken, value: token);
    return;
  }

  Future<void> clearToken() async {
    await _storage.delete(key: _kToken);
    return;
  }
}
