import 'package:json_annotation/json_annotation.dart';

import 'comment_dto.dart';
part 'list_comment_dto.g.dart';

@JsonSerializable(createToJson: false)
class ListCommentDto {
  final List<CommentDto> comments;
  final int total;
  final int skip;
  final int limit;
  const ListCommentDto({
    required this.comments,
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory ListCommentDto.fromJson(Map<String, dynamic> json) =>
      _$ListCommentDtoFromJson(json);
}
