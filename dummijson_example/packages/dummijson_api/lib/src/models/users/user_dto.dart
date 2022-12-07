// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:dummijson_api/src/models/users/company_dto.dart';
import 'package:json_annotation/json_annotation.dart';

import 'address_dto.dart';
import 'hair_dto.dart';

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
  final String username;
  final String password;
  final String image;
  final String gender;
//
  final String firstName;
  final String lastName;
  final String? maidenName;
  final int? age;
  final String? birhDate;
  final String? email;
  final String? phone;
  final String? bloodGroup;
  final int? height;
  final double? weight;
  final String? eyeColor;
  final String? domain;
  final String? ip;
  final String? macAddress;
  final String? university;
  final String? ein;
  final String? ssn;
  final String? userAgent;

  final AddressDto? address;
  final CompanyDto? company;
  final HairDto? hair;
  const UserDto({
    required this.id,
    required this.username,
    required this.password,
    required this.image,
    required this.gender,
    required this.firstName,
    required this.lastName,
    required this.maidenName,
    required this.age,
    this.birhDate,
    this.email,
    this.phone,
    this.bloodGroup,
    this.height,
    this.weight,
    this.eyeColor,
    this.domain,
    this.ip,
    this.macAddress,
    this.university,
    this.ein,
    this.ssn,
    this.userAgent,
    this.address,
    this.company,
    this.hair,
  });
  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
