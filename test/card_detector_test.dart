import 'package:card_detector/config/strings.dart';
import 'package:card_detector/service/card_detector.dart';
import 'package:test/test.dart';

void main() {
  final cardDetector = CardDetector();
  group('Card Detector', () {
    test('Detect Visa', () {
      final result = cardDetector.detectCardType('4111111111111111');
      expect(result, Strings.visa);
    });
    test('Detects MasterCard', () {
      final result = cardDetector.detectCardType('5555555555554444');
      expect(result, Strings.mastercard);
    });

    test('Detects American Express', () {
      final result = cardDetector.detectCardType('378282246310005');
      expect(result, Strings.amex);
    });

    test('Detects Discover', () {
      final result = cardDetector.detectCardType('6011000990139424');
      expect(result, Strings.discover);
    });

    test('Detects Diners Club', () {
      final result = cardDetector.detectCardType('30569309025904');
      expect(result, Strings.dinersClub);
    });

    test('Detects JCB', () {
      final result = cardDetector.detectCardType('3530111333300000');
      expect(result, Strings.jcb);
    });

    test('Detects UnionPay Invalid', () {
      final result = cardDetector.detectCardType('6240000000000000');
      expect(result, Strings.unknown);
    });

    test('Detects UnionPay Valid', () {
      final result = cardDetector.detectCardType('62123456789000003');
      expect(result, Strings.unionPay);
    });

    test('Detects Maestro', () {
      final result = cardDetector.detectCardType('6759649826438453');
      expect(result, Strings.maestro);
    });

    test('Detects Unknown card', () {
      final result = cardDetector.detectCardType('1234567890123456');
      expect(result, Strings.unknown);
    });  });
}
