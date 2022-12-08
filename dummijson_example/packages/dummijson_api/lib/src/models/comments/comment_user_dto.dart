import 'package:json_annotation/json_annotation.dart';
part 'comment_user_dto.g.dart';

@JsonSerializable(createToJson: false)
class CommentUserDto {
  final int id;
  final String username;

  const CommentUserDto({
    required this.id,
    required this.username,
  });

  factory CommentUserDto.fromJson(Map<String, dynamic> json) =>
      _$CommentUserDtoFromJson(json);
}
