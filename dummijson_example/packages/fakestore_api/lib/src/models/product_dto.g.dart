// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) => ProductDto(
      id: json['id'] as int,
      title: json['title'] as String,
      price: (json['price'] as num).toDouble(),
      description: json['description'] as String,
      category: json['category'] as String,
      image: json['image'] as String,
      rating: RatingDto.fromJson(json['rating'] as Map<String, dynamic>),
    );

RatingDto _$RatingDtoFromJson(Map<String, dynamic> json) => RatingDto(
      (json['rate'] as num).toDouble(),
      json['count'] as String,
    );
