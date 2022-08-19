class InAppPurchaseError implements Exception {
  final int? responseCode;
  final String? code;
  final String? message;

  InAppPurchaseError({required this.responseCode, this.code, this.message});

  @override
  String toString() =>
      "InAppPurchaseError: responseCode: $responseCode, code: $code, message: $message";
}

abstract class InAppPurchaseErrorCode {
  static const int connection = -1;
  static const int transactionFailed = -2;
}
