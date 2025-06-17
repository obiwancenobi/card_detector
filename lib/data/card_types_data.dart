import 'package:card_detector/config/strings.dart';
import 'package:card_detector/models/card_type.dart';

final List<CardType> cardTypes = [
  CardType(Strings.visa, RegExp(r'^4[0-9]{6,}$'), [13, 16, 19]),
  CardType(Strings.mastercard, RegExp(r'^(5[1-5][0-9]{4}|2[2-7][0-9]{4})'), [16]),
  CardType(Strings.amex, RegExp(r'^3[47][0-9]{5,}$'), [15]),
  CardType(Strings.discover, RegExp(r'^6(?:011|5[0-9]{2})[0-9]{3,}$'), [16, 19]),
  CardType(Strings.dinersClub, RegExp(r'^3(?:0[0-5]|[68][0-9])[0-9]{4,}$'), [14]),
  CardType(Strings.jcb, RegExp(r'^(?:2131|1800|35\d{3})\d{11}$'), [16, 17, 18, 19]),
  CardType(Strings.unionPay, RegExp(r'^62[0-9]{14,17}$'), [16, 17, 18, 19]),
  CardType(Strings.maestro, RegExp(r'^(5018|5020|5038|5893|6304|6759|6761|6763)[0-9]{8,15}$'), [12, 13, 14, 15, 16, 17, 18, 19]),
  CardType(Strings.unknown, RegExp(r'.*'), []),
];