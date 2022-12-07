// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressDto _$AddressDtoFromJson(Map<String, dynamic> json) => AddressDto(
      address: json['address'] as String?,
      city: json['city'] as String,
      coordinates: json['coordinates'] == null
          ? null
          : CoordinatesDto.fromJson(
              json['coordinates'] as Map<String, dynamic>),
      postalCode: json['postalCode'] as String?,
      state: json['state'] as String?,
    );
