import 'package:json_annotation/json_annotation.dart';
part 'post_dto.g.dart';

@JsonSerializable(createToJson: false)
class PostDto {
  final int id;
  final String title;
  final String body;
  final int userId;
  final List<String>? tags;
  final int reaction;
  const PostDto({
    required this.id,
    required this.title,
    required this.body,
    required this.userId,
    this.tags,
    required this.reaction,
  });

  factory PostDto.fromJson(Map<String, dynamic> json) =>
      _$PostDtoFromJson(json);
}
