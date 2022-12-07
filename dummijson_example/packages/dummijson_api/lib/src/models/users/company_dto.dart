// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dummijson_api/src/models/users/address_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'company_dto.g.dart';

@JsonSerializable(createToJson: false)
class CompanyDto {
  final AddressDto address;
  final String department;
  final String name;
  final String title;
  const CompanyDto({
    required this.address,
    required this.department,
    required this.name,
    required this.title,
  });

  factory CompanyDto.fromJson(Map<String, dynamic> map) =>
      _$CompanyDtoFromJson(map);
}
