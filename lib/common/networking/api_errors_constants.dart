class ApiErrorsConstants {
  static const String badRequestError = "badRequestError";
  static const String failedToGenerateOtp = "failedToGenerateOtp";
}

class ParseErrorLogger {
  void logError(Object error, StackTrace stackTrace, dynamic requestOptions) {}
}
