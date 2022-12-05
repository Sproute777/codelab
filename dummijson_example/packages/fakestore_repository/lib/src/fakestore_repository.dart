import 'package:fakestore_api/fakestore_api.dart';
import 'package:dio/dio.dart';
import 'models/models.dart';

abstract class FakestoreRepository {
  Future<Token> login({required String username, required String password});
}

class FakestoreRepositoryImpl implements FakestoreRepository {
  FakestoreRepositoryImpl(FakestoreApiClient? fakestoreApiClient)
      : _fakestoreApiClient = fakestoreApiClient ?? FakestoreApiClient(dio: Dio());

  final FakestoreApiClient _fakestoreApiClient;

  @override
  Future<Token> login(
      {required String username, required String password}) async {
    final jsonDto = await _fakestoreApiClient
        .login(LoginRequestBody(username: username, password: password));
    return Token.fromDto(jsonDto);
  }
}
