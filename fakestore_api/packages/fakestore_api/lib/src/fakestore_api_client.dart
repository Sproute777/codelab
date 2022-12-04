import 'package:retrofit/retrofit.dart';

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '_enpoints.dart';
import 'models/models.dart';

part 'fakestore_api_client.g.dart';

@RestApi(baseUrl: Endpoints.baseUrl)
abstract class FakestoreApiClient {
  factory FakestoreApiClient({Dio? dio, String? baseUrl}) {
    final innerDio = dio ?? Dio();
    return _FakestoreApiClient(innerDio);
  }
  @GET('')
  Future<String> getUsers();

  @POST(Endpoints.login)
  Future<TokenDto> login(@Body() LoginRequestBody loginRequest);
  // /// получить одну сыгранную игру
  // @GET('/{id}')
  // Future<String> getReport({
  //   @Path() required int id,
  //   @Queries() ReportsSingleQueriesParam? params,
  // });
}
