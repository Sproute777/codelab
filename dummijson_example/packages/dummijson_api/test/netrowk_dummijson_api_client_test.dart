import 'package:dummijson_api/src/dummijson_api_client.dart';
import 'package:dummijson_api/src/models/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  DummijsonApiClient? fakestoreApiClient;
  group('fakestoreapi тест http запросов', () {
    setUp(() {
      fakestoreApiClient = DummijsonApiClient();
    });

    test(
      'network fakestoreapi login',
      () {
        /// https://fakestoreapi.com/docs
        /// username & password from docs
        fakestoreApiClient!
            .login(const LoginRequestBody(
                username: 'mor_2314', password: '83r5^_'))
            .then((tokenDto) => expect(tokenDto.token, isA<String>()));
      },
    );

    test(
      'network fakestoreapi get products',
      () {
        fakestoreApiClient!.getProducts().then((listProductDto) =>
            expect(listProductDto, isA<List<ProductDto>>()));
      },
    );

    test('network fakestoreapi get users', () {
      fakestoreApiClient!
          .getUsers()
          .then((listUsers) => expect(listUsers, isA<List<UserDto>>));
    });

    test('network fakestoreapi get carts', () {
      fakestoreApiClient!
          .getCarts()
          .then((listCarts) => expect(listCarts, isA<List<CartDto>>));
    });
  });
}