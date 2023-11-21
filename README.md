# Phone number mask parser
Validator for NUBAN bank numbers.

<div align="center">

  <a href="">![Pub Likes](https://img.shields.io/pub/likes/nuban_validator?color=success)</a>
  <a href="">![Pub Version](https://img.shields.io/pub/v/nuban_validator?color=important)</a>
  <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="License: MIT"></a>

</div>

<div align="center">
  <a href="https://www.buymeacoffee.com/ivangalkin" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" height="32px" width= "128px"></a>
</div>

## Getting Started
Usage:
```dart
  final NubanValidator nubanValidator = const NubanValidator();
  final bool isValid = nubanValidator.isValid(
    bankCode: "044",
    accountNumber: "0000014579",
  );
```

## Additional information
For more details see example project.\
And feel free to open an issue if you find any bugs or errors or suggestions.
