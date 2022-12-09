import 'package:json_annotation/json_annotation.dart';
import 'quote_dto.dart';
part 'list_quote_dto.g.dart';

@JsonSerializable(createToJson: false)
class ListQuoteDto {
  final List<QuoteDto> quotes;
  final int total;
  final int skip;
  final int limit;
  const ListQuoteDto({
    required this.quotes,
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory ListQuoteDto.fromJson(Map<String, dynamic> json) =>
      _$ListQuoteDtoFromJson(json);
}
