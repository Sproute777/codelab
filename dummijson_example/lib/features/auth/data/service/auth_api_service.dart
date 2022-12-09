import '/common/http/_endpoints.dart';
import 'package:retrofit/retrofit.dart';

import 'package:dio/dio.dart';
import '../models/models.dart';

part 'auth_api_service.g.dart';

@RestApi(baseUrl: Endpoints.baseUrl)
abstract class AuthApiService {
  factory AuthApiService({Dio? dio, String? baseUrl}) {
    final innerDio = dio ?? Dio();
    return _AuthApiService(innerDio, baseUrl: baseUrl);
  }
  @POST(Endpoints.login)
  Future<TokenDto> login(@Body() LoginRequestBody loginRequest);
}
