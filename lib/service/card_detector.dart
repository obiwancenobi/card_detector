
import 'package:card_detector/config/strings.dart';
import 'package:card_detector/data/card_types_data.dart';
import 'package:card_detector/utils/luhn_validator.dart';

class CardDetector {
  String detectCardType(String cardNumber) {
    final cleanedNumber = cardNumber.replaceAll(RegExp(r'\s+|-'), '');
    for (final type in cardTypes) {
      final isPatternMatch = type.pattern.hasMatch(cleanedNumber);
      final isValidLength = type.validLengths.contains(cleanedNumber.length);
      final isValidLuhn = luhnCheck(cleanedNumber);
      if (isPatternMatch && isValidLength && isValidLuhn) {
        return type.name;
      }
    }
    return Strings.unknown;
  }
}