import 'package:json_annotation/json_annotation.dart';
part 'quote_dto.g.dart';

@JsonSerializable(createToJson: false)
class QuoteDto {
  final int id;
  final String quote;
  final String author;
  const QuoteDto({
    required this.id,
    required this.quote,
    required this.author,
  });

  factory QuoteDto.fromJson(Map<String, dynamic> json) =>
      _$QuoteDtoFromJson(json);
}
