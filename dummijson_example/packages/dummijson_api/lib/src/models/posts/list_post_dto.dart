import 'package:json_annotation/json_annotation.dart';
import 'post_dto.dart';
part 'list_post_dto.g.dart';

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
