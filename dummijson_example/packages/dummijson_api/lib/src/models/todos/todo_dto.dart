import 'package:json_annotation/json_annotation.dart';
part 'todo_dto.g.dart';

@JsonSerializable(createToJson: false)
class TodoDto {
  final int id;
  final String todo;
  final bool completed;
  final int userId;
  const TodoDto({
    required this.id,
    required this.todo,
    required this.completed,
    required this.userId,
  });

  factory TodoDto.fromJson(Map<String, dynamic> json) =>
      _$TodoDtoFromJson(json);
}
