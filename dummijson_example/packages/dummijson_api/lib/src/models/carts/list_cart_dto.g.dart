// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_cart_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListCartDto _$ListCartDtoFromJson(Map<String, dynamic> json) => ListCartDto(
      carts: (json['carts'] as List<dynamic>)
          .map((e) => CartDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int,
      skip: json['skip'] as int,
      limit: json['limit'] as int,
    );
