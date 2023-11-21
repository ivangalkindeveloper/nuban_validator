/// Algorithm source: https://www.cbn.gov.ng/OUT/2011/CIRCULARS/BSPD/NUBAN%20PROPOSALS%20V%200%204-%2003%2009%202010.PDF
/// The approved NUBAN format ABC-DEFGHIJKL-M where
/// ABC is the 3-digit bank code assigned by the CBN
/// DEFGHIJKL is the NUBAN Account serial number
/// M is the NUBAN Check Digit, required for account number validation
class NubanValidator {
  const NubanValidator();

  /// Number validation
  bool isValid({
    required String bankCode,
    required String accountNumber,
  }) {
    const List<int> algo = [3, 7, 3, 3, 7, 3, 3, 7, 3, 3, 7, 3];

    bankCode = bankCode.trim();
    accountNumber = accountNumber.trim();
    if (bankCode.length != 3 || int.tryParse(bankCode) == null) {
      return false;
    }
    if (accountNumber.length != 10 || int.tryParse(accountNumber) == null) {
      return false;
    }

    final String fullAccountNumber = bankCode + accountNumber;

    final List<int> acctNumbers = fullAccountNumber.codeUnits
        .map(
          (
            int unit,
          ) =>
              unit - '0'.codeUnitAt(0),
        )
        .toList();

    int sum = 0;
    for (int i = 0; i < acctNumbers.length - 1; i++) {
      sum += acctNumbers[i] * algo[i];
    }
    final int mod = sum % 10;
    final int checkDigit = (mod == 0) ? mod : 10 - mod;

    return checkDigit == acctNumbers[12];
  }
}
