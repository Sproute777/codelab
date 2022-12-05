// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';

part 'user_dto.g.dart';

@JsonSerializable(createToJson: false)
class ListUserDto {
  List<UserDto> users;
  ListUserDto({
    required this.users,
  });

  factory ListUserDto.fromJson(Map<String, dynamic> json) =>
      _$ListUserDtoFromJson(json);
}

@JsonSerializable(createToJson: false)
class UserDto {
  final int id;
  final String firstName;
  final String lastName;
  final String maidenName;
  final int age;
  final String gender;
  final String email;
  final String phone;
  final String username;
  final String password;
  final String image;
  UserDto({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.maidenName,
    required this.age,
    required this.gender,
    required this.email,
    required this.phone,
    required this.username,
    required this.password,
    required this.image,
  });
  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
