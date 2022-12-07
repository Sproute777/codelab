// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyDto _$CompanyDtoFromJson(Map<String, dynamic> json) => CompanyDto(
      address: AddressDto.fromJson(json['address'] as Map<String, dynamic>),
      department: json['department'] as String,
      name: json['name'] as String,
      title: json['title'] as String,
    );
