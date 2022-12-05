import 'package:json_annotation/json_annotation.dart';
part 'product_dto.g.dart';

@JsonSerializable(createToJson: false)
class ProductDto {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final RatingDto rating;

  const ProductDto(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      required this.rating});

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);

  // final Rating rating;
  // {'rate': 4.9, 'count': 120}
}

@JsonSerializable(createToJson: false)
class RatingDto {
  final double rate;
  final String count;
  RatingDto(this.rate, this.count);

  factory RatingDto.fromJson(Map<String, dynamic> json) =>
      _$RatingDtoFromJson(json);
}