import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '_endpoints.dart';
import 'models/models.dart';

part 'users_api_service.g.dart';

@RestApi(baseUrl: Endpoints.baseUrl)
abstract class UsersApiService {
  factory UsersApiService({Dio? dio, String? baseUrl}) {
    final innerDio = dio ?? Dio();
    return _UsersApiService(innerDio, baseUrl: baseUrl);
  }
  @GET(Endpoints.users)
  Future<ListUserDto> getUsers();
}
