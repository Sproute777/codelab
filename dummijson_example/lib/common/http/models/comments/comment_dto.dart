import 'package:json_annotation/json_annotation.dart';

import 'comment_user_dto.dart';

part 'comment_dto.g.dart';

@JsonSerializable(createToJson: false)
class CommentDto {
  final int id;
  final String body;
  final int postId;
  final CommentUserDto user;
  const CommentDto({
    required this.id,
    required this.body,
    required this.postId,
    required this.user,
  });

  factory CommentDto.fromJson(Map<String, dynamic> json) =>
      _$CommentDtoFromJson(json);
}
