// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartDto _$CartDtoFromJson(Map<String, dynamic> json) => CartDto(
      id: json['id'] as int,
      products: (json['products'] as List<dynamic>)
          .map((e) => CartProductDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int,
      discountTotal: json['discountTotal'] as int,
      userId: json['userId'] as int,
      totalProducts: json['totalProducts'] as int,
      totalQuantity: json['totalQuantity'] as int,
    );
