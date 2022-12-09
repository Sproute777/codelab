import 'package:dio/dio.dart';
import 'package:dummijson_example/features/auth/data/models/login_request_body.dart';
import 'package:dummijson_example/features/auth/data/models/token_dto.dart';
import 'package:dummijson_example/features/auth/data/remote/auth_api_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  AuthApiService? authApiService;
  group('dummisjon testing', () {
    setUp(() {
      authApiService = AuthApiService();
    });

    group('login group', () {
      test(
        'is login success',
        () {
          /// username & password from docs
          Future futureResult = authApiService!.login(
              const LoginRequestBody(
                  username: 'kminchelle', password: '0lelplR'));
          futureResult.then((result) {
            expect(result, isA<TokenDto>());
          });
          expect(futureResult, completes);
        },
      );

      test(
        'is login failure',
        () {
          expect(
            authApiService!.login(const LoginRequestBody(
                username: 'xxxxxx', password: 'xxxxxxx')),
            throwsA(isA<DioError>()),
          );
        },
      );
    });


  //   group('users group', () {
  //     test(' gets users success', () {
  //                 Future futureResult = authApiService!.getUsers();
  //         futureResult.then((result) {
  //           expect(result, isA<ListUserDto>());
  //         });
  //         expect(futureResult, completes);



  //     });

   
  //  }); 

  //   test(
  //     'network dummijson get products',
  //     () {
  //       authApiService!.getProducts().then((listProductDto) =>
  //           expect(listProductDto, isA<List<ProductDto>>()));
  //     },
  //   );
  //   test('network dummijson get carts', () {
  //     authApiService!
  //         .getCarts()
  //         .then((listCarts) => expect(listCarts, isA<List<CartDto>>));
  //   });
  });
}