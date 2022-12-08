// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_quote_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListQuoteDto _$ListQuoteDtoFromJson(Map<String, dynamic> json) => ListQuoteDto(
      quotes: (json['quotes'] as List<dynamic>)
          .map((e) => QuoteDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int,
      skip: json['skip'] as int,
      limit: json['limit'] as int,
    );
