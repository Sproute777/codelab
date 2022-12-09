import 'package:json_annotation/json_annotation.dart';
import 'user_dto.dart';
part 'list_user_dto.g.dart';

@JsonSerializable(createToJson: false)
class ListUserDto {
  final List<UserDto> users;
  final int total;
  final int skip;
  final int limit;
  ListUserDto({
    required this.users,
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory ListUserDto.fromJson(Map<String, dynamic> json) =>
      _$ListUserDtoFromJson(json);
}
