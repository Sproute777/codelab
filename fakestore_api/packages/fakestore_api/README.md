<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

apхитектура bloc 

кодогенерация retrofit, json_annotation

тестируемый api_client

```dart

   group('fakestoreapi тест http запросов', () {
    setUp(() {
      fakestoreApiClient = FakestoreApiClient();
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

```

