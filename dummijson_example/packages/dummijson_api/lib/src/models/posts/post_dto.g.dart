// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_dto.dart';

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

PostDto _$PostDtoFromJson(Map<String, dynamic> json) => PostDto(
      id: json['id'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
      userId: json['userId'] as int,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      reaction: json['reaction'] as int,
    );
