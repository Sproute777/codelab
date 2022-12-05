import 'package:dio/dio.dart';
import 'package:dummijson_api/src/dummijson_api_client.dart';
import 'package:dummijson_api/src/models/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  DummijsonApiClient? dummijsonApiClient;
  group('dummisjon testing', () {
    setUp(() {
      dummijsonApiClient = DummijsonApiClient();
    });

    group('login group', () {
      test(
        'is login success',
        () {
          /// https://fakestoreapi.com/docs
          /// username & password from docs
          Future futureResult = dummijsonApiClient!.login(
              const LoginRequestBody(
                  username: 'kminchelle', password: '0lelplR'));
          futureResult.then((result) {
            expect(result, isA<String>());
          });
          expect(futureResult, completes);
        },
      );

      test(
        'is login failure',
        () {
          expect(
            dummijsonApiClient!.login(const LoginRequestBody(
                username: 'xxxxxx', password: 'xxxxxxx')),
            throwsA(isA<DioError>()),
          );
        },
      );
    });


    group('users group', () {
      test(' gets users success', () {
                  Future futureResult = dummijsonApiClient!.getUsers();
          futureResult.then((result) {
            expect(result, isA<ListUserDto>());
          });
          expect(futureResult, completes);



      });

   
   }); 

    test(
      'network dummijson get products',
      () {
        dummijsonApiClient!.getProducts().then((listProductDto) =>
            expect(listProductDto, isA<List<ProductDto>>()));
      },
    );
    test('network dummijson get carts', () {
      dummijsonApiClient!
          .getCarts()
          .then((listCarts) => expect(listCarts, isA<List<CartDto>>));
    });
  });
}
