import 'package:json_annotation/json_annotation.dart';
part 'login_request_body.g.dart';

@JsonSerializable(createFactory: false)
class LoginRequestBody {
  final String username;
  final String password;
  const LoginRequestBody({
    required this.username,
    required this.password,
  });

  Map<String, dynamic> toJson() => _$LoginRequestBodyToJson(this);

}
