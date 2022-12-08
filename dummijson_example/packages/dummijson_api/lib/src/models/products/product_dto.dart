// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'product_dto.g.dart';

@JsonSerializable(createToJson: false)
class ProductDto {
  final int id;
  final String title;
  final String description;
  final String price;
  final String? discountPercentage;
  final double rating;
  final int stock;
  final String brand;
  final String category;
  final String thumbnail;
  final List<String> images;
  const ProductDto({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.brand,
    required this.category,
    required this.thumbnail,
    required this.images,
  });

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);
}
