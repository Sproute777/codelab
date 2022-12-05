// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';

// import 'address_dto.dart';
// import 'name_dto.dart';
part 'user_dto.g.dart';

@JsonSerializable(createToJson: false)
class UserDto {
  final int id;
  final String email;
  final String password;
  final NameDto name;
  final AddressDto address;
  final String phone;
  const UserDto({
    required this.name,
    required this.address,
    required this.id,
    required this.email,
    required this.password,
    required this.phone,
  });

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}

@JsonSerializable(createToJson: false)
class NameDto {
  final String firstname;
  final String lastname;

  const NameDto({
    required this.firstname,
    required this.lastname,
  });

  factory NameDto.fromJson(Map<String, dynamic> json) =>
      _$NameDtoFromJson(json);
}

@JsonSerializable(createToJson: false)
class AddressDto {
  final String city;
  final String street;
  final int number;
  final String zipcode;
  final GeolocationDto geolocationDto;

  const AddressDto(
      {required this.city,
      required this.street,
      required this.number,
      required this.zipcode,
      required this.geolocationDto});

  factory AddressDto.fromJson(Map<String, dynamic> json) =>
      _$AddressDtoFromJson(json);
}

@JsonSerializable(createToJson: false)
class GeolocationDto {
  final String lat;
  final String long;
  const GeolocationDto({
    required this.lat,
    required this.long,
  });

  factory GeolocationDto.fromJson(Map<String, dynamic> json) =>
      _$GeolocationDtoFromJson(json);
}
