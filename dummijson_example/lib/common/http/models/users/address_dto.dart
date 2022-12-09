// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'coordinates_dto.dart';

part 'address_dto.g.dart';

@JsonSerializable(createToJson: false)
class AddressDto {
  final String? address;
  final String city;
  final CoordinatesDto? coordinates;
  final String? postalCode;
  final String? state;
  const AddressDto({
    this.address,
    required this.city,
    this.coordinates,
    this.postalCode,
    this.state,
  });

  factory AddressDto.fromJson(Map<String, dynamic> map) =>
      _$AddressDtoFromJson(map);
}
