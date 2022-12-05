// ignore_for_file: invalid_annotation_target

import 'package:json_annotation/json_annotation.dart';
part 'token_dto.g.dart';

@JsonSerializable(createToJson: false)
class TokenDto {
  final String token;
  const TokenDto(this.token);

  factory TokenDto.fromJson(Map<String, dynamic> json) =>
      _$TokenDtoFromJson(json);
}