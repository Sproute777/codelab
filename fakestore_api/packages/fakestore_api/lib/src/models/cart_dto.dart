import 'package:json_annotation/json_annotation.dart';
part 'cart_dto.g.dart';

@JsonSerializable(createToJson: false)
class CartDto {
  final int id;
  final int userId;
  final DateTime date;
  final List<ProductQuantityDto> productsQuantityDto;
  const CartDto({
    required this.id,
    required this.userId,
    required this.date,
    required this.productsQuantityDto,
  });

  factory CartDto.fromJson(Map<String, dynamic> map) => _$CartDtoFromJson(map);
}

@JsonSerializable(createToJson: false)
class ProductQuantityDto {
  final int productId;
  final int quantiry;
  const ProductQuantityDto({
    required this.productId,
    required this.quantiry,
  });

  factory ProductQuantityDto.fromJson(Map<String, dynamic> map) =>
      _$ProductQuantityDtoFromJson(map);
}
