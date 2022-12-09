import 'package:json_annotation/json_annotation.dart';
part 'cart_product_dto.g.dart';

@JsonSerializable(createToJson: false)
class CartProductDto {
  final int id;
  final String title;
  final int price;
  final int quantity;
  final int total;
  final double? discountPercentage;
  final int? diccountPrice;
  const CartProductDto({
    required this.id,
    required this.title,
    required this.price,
    required this.quantity,
    required this.total,
    this.discountPercentage,
    this.diccountPrice,
  });

  factory CartProductDto.fromJson(Map<String, dynamic> json) =>
      _$CartProductDtoFromJson(json);
}
