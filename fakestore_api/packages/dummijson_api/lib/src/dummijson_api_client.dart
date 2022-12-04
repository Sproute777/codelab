import 'package:retrofit/retrofit.dart';

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import 'dummijson_enpoints.dart';

part 'dummijson_api_client.g.dart';

@RestApi(baseUrl: Endpoints.baseUrl)
abstract class DummijsonApiClient {
  factory DummijsonApiClient(Dio dio) = _DummijsonApiClient;

  @GET('')
  Future<String> getUsers();

  // /// получить одну сыгранную игру
  // @GET('/{id}')
  // Future<String> getReport({
  //   @Path() required int id,
  //   @Queries() ReportsSingleQueriesParam? params,
  // });
}
