// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_comment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListCommentDto _$ListCommentDtoFromJson(Map<String, dynamic> json) =>
    ListCommentDto(
      comments: (json['comments'] as List<dynamic>)
          .map((e) => CommentDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int,
      skip: json['skip'] as int,
      limit: json['limit'] as int,
    );
