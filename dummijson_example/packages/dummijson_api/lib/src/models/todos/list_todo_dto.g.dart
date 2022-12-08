// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_todo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListTodoDto _$ListTodoDtoFromJson(Map<String, dynamic> json) => ListTodoDto(
      todos: (json['todos'] as List<dynamic>)
          .map((e) => TodoDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int,
      skip: json['skip'] as int,
      limit: json['limit'] as int,
    );
