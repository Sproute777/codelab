import 'package:dio/dio.dart';
import 'package:dummijson_api/src/dummijson_api_client.dart';
import 'package:dummijson_api/src/models/models.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:retrofit/retrofit.dart';

void main() {
  DummijsonApiClient? dummijsonApiClient;
  group('dummisjon testing', () {
    setUp(() {
      dummijsonApiClient = DummijsonApiClient();
    });

    test(
      'network login success',
      ()  {
        /// https://fakestoreapi.com/docs
        /// username & password from docs
     Future  futureResult =    dummijsonApiClient!
            .login(const LoginRequestBody(
                username: 'kminchelle', password: '0lelplR'));
     futureResult.then((result){
         expect(result, isA<HttpResponse<String>>());  
         expect((result as HttpResponse<String>).response.statusCode, 200 ); 
     }) ;      
     expect(futureResult, completes);
      },
    );


    test(
      'network login failure',
      () {
        expect(
          dummijsonApiClient!.login(
              const LoginRequestBody(username: 'xxxxxx', password: 'xxxxxxx')),
          throwsA(isA<DioError>()),
        );
      },
    );



    test(
      'network dummijson get products',
      () {
        dummijsonApiClient!.getProducts().then((listProductDto) =>
            expect(listProductDto, isA<List<ProductDto>>()));
      },
    );

    test('network dummijson get users', () {
      dummijsonApiClient!
          .getUsers()
          .then((listUsers) => expect(listUsers, isA<List<UserDto>>));
    });

    test('network dummijson get carts', () {
      dummijsonApiClient!
          .getCarts()
          .then((listCarts) => expect(listCarts, isA<List<CartDto>>));
    });
  });
}
