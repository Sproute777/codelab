import 'package:fakestore_api/fakestore_api.dart';

class Token {
  final String value;
  const Token(this.value);

  factory Token.fromDto(TokenDto dto) => Token(dto.token);
}
