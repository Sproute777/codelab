import 'package:json_annotation/json_annotation.dart';
import 'product_dto.dart';
part 'list_product_dto.g.dart';

@JsonSerializable(createToJson: false)
class ListProductDto {
  final List<ProductDto> products;
  final int total;
  final int skip;
  final int limit;
  const ListProductDto({
    required this.products,
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory ListProductDto.fromJson(Map<String, dynamic> json) =>
      _$ListProductDtoFromJson(json);
}
