import 'package:retrofit/retrofit.dart';

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '_enpoints.dart';
import 'models/models.dart';

part 'dummijson_api_client.g.dart';

@RestApi(baseUrl: Endpoints.baseUrl)
abstract class DummijsonApiClient {
  factory DummijsonApiClient({Dio? dio, String? baseUrl}) {
    final innerDio = dio ?? Dio();
    return _DummijsonApiClient(innerDio, baseUrl: baseUrl);
  }
  @GET(Endpoints.users)
  Future<List<UserDto>> getUsers();

  @GET(Endpoints.products)
  Future<List<ProductDto>> getProducts();

  @GET(Endpoints.carts)
  Future<List<CartDto>> getCarts();

  @POST(Endpoints.login)
  Future<TokenDto> login(@Body() LoginRequestBody loginRequest);

  // /// получить одну сыгранную игру
  // @GET('/{id}')
  // Future<String> getReport({
  //   @Path() required int id,
  //   @Queries() ReportsSingleQueriesParam? params,
  // });
}
