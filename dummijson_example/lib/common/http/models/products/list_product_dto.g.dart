// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListProductDto _$ListProductDtoFromJson(Map<String, dynamic> json) =>
    ListProductDto(
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int,
      skip: json['skip'] as int,
      limit: json['limit'] as int,
    );
