// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListUserDto _$ListUserDtoFromJson(Map<String, dynamic> json) => ListUserDto(
      users: (json['users'] as List<dynamic>)
          .map((e) => UserDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int,
      skip: json['skip'] as int,
      limit: json['limit'] as int,
    );
