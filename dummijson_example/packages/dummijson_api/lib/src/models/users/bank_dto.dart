import 'package:json_annotation/json_annotation.dart';
part 'bank_dto.g.dart';

@JsonSerializable(createToJson: false)
class BankDto {
  final String cardExpire;
  final String cardNumber;
  final String cardType;
  final String curency;
  final String iban;
  BankDto({
    required this.cardExpire,
    required this.cardNumber,
    required this.cardType,
    required this.curency,
    required this.iban,
  });
}
