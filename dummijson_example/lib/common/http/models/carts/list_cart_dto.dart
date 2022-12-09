import 'package:json_annotation/json_annotation.dart';
import 'cart_dto.dart';
part 'list_cart_dto.g.dart';

@JsonSerializable(createToJson: false)
class ListCartDto {
  final List<CartDto> carts;
  final int total;
  final int skip;
  final int limit;
  const ListCartDto({
    required this.carts,
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory ListCartDto.fromJson(Map<String, dynamic> json) =>
      _$ListCartDtoFromJson(json);
}
