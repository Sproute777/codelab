// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListUserDto _$ListUserDtoFromJson(Map<String, dynamic> json) => ListUserDto(
      users: (json['users'] as List<dynamic>)
          .map((e) => UserDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

UserDto _$UserDtoFromJson(Map<String, dynamic> json) => UserDto(
      id: json['id'] as int,
      username: json['username'] as String,
      password: json['password'] as String,
      image: json['image'] as String,
      gender: json['gender'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      maidenName: json['maidenName'] as String?,
      age: json['age'] as int?,
      birhDate: json['birhDate'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      bloodGroup: json['bloodGroup'] as String?,
      height: json['height'] as int?,
      weight: (json['weight'] as num?)?.toDouble(),
      eyeColor: json['eyeColor'] as String?,
      domain: json['domain'] as String?,
      ip: json['ip'] as String?,
      macAddress: json['macAddress'] as String?,
      university: json['university'] as String?,
      ein: json['ein'] as String?,
      ssn: json['ssn'] as String?,
      userAgent: json['userAgent'] as String?,
      address: json['address'] == null
          ? null
          : AddressDto.fromJson(json['address'] as Map<String, dynamic>),
      company: json['company'] == null
          ? null
          : CompanyDto.fromJson(json['company'] as Map<String, dynamic>),
      hair: json['hair'] == null
          ? null
          : HairDto.fromJson(json['hair'] as Map<String, dynamic>),
    );
