// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentDto _$CommentDtoFromJson(Map<String, dynamic> json) => CommentDto(
      id: json['id'] as int,
      body: json['body'] as String,
      postId: json['postId'] as int,
      user: CommentUserDto.fromJson(json['user'] as Map<String, dynamic>),
    );
