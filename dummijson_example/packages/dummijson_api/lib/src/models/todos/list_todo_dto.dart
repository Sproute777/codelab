import 'package:json_annotation/json_annotation.dart';
import 'todo_dto.dart';
part 'list_todo_dto.g.dart';

@JsonSerializable(createToJson: false)
class ListTodoDto {
  final List<TodoDto> todos;
  final int total;
  final int skip;
  final int limit;
  const ListTodoDto({
    required this.todos,
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory ListTodoDto.fromJson(Map<String, dynamic> json) =>
      _$ListTodoDtoFromJson(json);
}
