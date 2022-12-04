import 'package:retrofit/retrofit.dart';

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '_enpoints.dart';

part 'fakestore_api_client.g.dart';

@RestApi(baseUrl: Endpoints.baseUrl)
abstract class FakestoreApiClient {
  factory FakestoreApiClient(Dio dio) = _FakestoreApiClient;

  @GET('')
  Future<String> getUsers();

  // /// получить одну сыгранную игру
  // @GET('/{id}')
  // Future<String> getReport({
  //   @Path() required int id,
  //   @Queries() ReportsSingleQueriesParam? params,
  // });
}
