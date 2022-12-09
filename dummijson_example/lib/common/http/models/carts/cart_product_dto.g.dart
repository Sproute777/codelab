// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartProductDto _$CartProductDtoFromJson(Map<String, dynamic> json) =>
    CartProductDto(
      id: json['id'] as int,
      title: json['title'] as String,
      price: json['price'] as int,
      quantity: json['quantity'] as int,
      total: json['total'] as int,
      discountPercentage: (json['discountPercentage'] as num?)?.toDouble(),
      diccountPrice: json['diccountPrice'] as int?,
    );
