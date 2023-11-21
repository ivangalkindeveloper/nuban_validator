import 'package:nuban_validator/nuban_validator.dart';
import 'package:test/test.dart';

void main() {
  group(
    'NubanValidator Test',
    () {
      final NubanValidator nubanValidator = NubanValidator();

      test(
        'Invalid numbers',
        () {
          expect(
            nubanValidator.isValid(
              bankCode: "044",
              accountNumber: "0000014579",
            ),
            isTrue,
          );
          expect(
            nubanValidator.isValid(
              bankCode: "044",
              accountNumber: "0724640009",
            ),
            isTrue,
          );
          expect(
            nubanValidator.isValid(
              bankCode: "057",
              accountNumber: "2080330028",
            ),
            isTrue,
          );
          expect(
            nubanValidator.isValid(
              bankCode: "011",
              accountNumber: "3121717693",
            ),
            isTrue,
          );
        },
      );
    },
  );
}
