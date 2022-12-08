// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_post_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListPostDto _$ListPostDtoFromJson(Map<String, dynamic> json) => ListPostDto(
      posts: (json['posts'] as List<dynamic>)
          .map((e) => PostDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int,
      skip: json['skip'] as int,
      limit: json['limit'] as int,
    );
