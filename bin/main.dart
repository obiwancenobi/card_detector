import 'dart:io';
import 'package:card_detector/config/strings.dart';
import 'package:card_detector/service/card_detector.dart';

void main(List<String> arguments) {
  final cardDetector = CardDetector();
  while(true) {
    stdout.write(Strings.enter);
    final input = stdin.readLineSync() ?? '';
    if (input.isEmpty) {
      print(Strings.input);
      continue; // Ignore empty input
    }
    if (input == Strings.exit) {
      print(Strings.bye);
      break;
    }
    try {
      print('${Strings.output} ${cardDetector.detectCardType(input)}\n');
    } catch (e) {
      print(Strings.invalid);
      continue; // Ignore invalid input
    }
  }

}
