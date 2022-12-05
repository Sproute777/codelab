// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDto _$UserDtoFromJson(Map<String, dynamic> json) => UserDto(
      name: NameDto.fromJson(json['name'] as Map<String, dynamic>),
      address: AddressDto.fromJson(json['address'] as Map<String, dynamic>),
      id: json['id'] as int,
      email: json['email'] as String,
      password: json['password'] as String,
      phone: json['phone'] as String,
    );

NameDto _$NameDtoFromJson(Map<String, dynamic> json) => NameDto(
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
    );

AddressDto _$AddressDtoFromJson(Map<String, dynamic> json) => AddressDto(
      city: json['city'] as String,
      street: json['street'] as String,
      number: json['number'] as int,
      zipcode: json['zipcode'] as String,
      geolocationDto: GeolocationDto.fromJson(
          json['geolocationDto'] as Map<String, dynamic>),
    );

GeolocationDto _$GeolocationDtoFromJson(Map<String, dynamic> json) =>
    GeolocationDto(
      lat: json['lat'] as String,
      long: json['long'] as String,
    );
