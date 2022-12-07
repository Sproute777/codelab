// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'post_dto.g.dart';

@JsonSerializable(createToJson: false)
class ListPostDto {
  final List<PostDto> posts;
  final int total;
  final int skip;
  final int limit;
  const ListPostDto({
    required this.posts,
    required this.total,
    required this.skip,
    required this.limit,
  });
  factory ListPostDto.fromJson(Map<String, dynamic> json) =>
      _$ListPostDtoFromJson(json);
}

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
