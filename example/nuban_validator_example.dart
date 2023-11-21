import 'package:nuban_validator/nuban_validator.dart';

void main() {
  final NubanValidator nubanValidator = const NubanValidator();
  final bool isValid = nubanValidator.isValid(
    bankCode: "044",
    accountNumber: "0000014579",
  );
  print(isValid);
}
