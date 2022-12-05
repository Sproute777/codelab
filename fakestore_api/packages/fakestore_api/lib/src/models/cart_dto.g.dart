// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartDto _$CartDtoFromJson(Map<String, dynamic> json) => CartDto(
      id: json['id'] as int,
      userId: json['userId'] as int,
      date: DateTime.parse(json['date'] as String),
      productsQuantityDto: (json['productsQuantityDto'] as List<dynamic>)
          .map((e) => ProductQuantityDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

ProductQuantityDto _$ProductQuantityDtoFromJson(Map<String, dynamic> json) =>
    ProductQuantityDto(
      productId: json['productId'] as int,
      quantiry: json['quantiry'] as int,
    );
