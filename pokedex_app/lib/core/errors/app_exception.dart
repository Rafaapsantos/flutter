abstract class AppException implements Exception {
  const AppException(this.message, [this.cause, this.stackTrace]);
  final String message;
  final Object? cause;
  final StackTrace? stackTrace;

  @override
  String toString() =>
      '${runtimeType.toString()}: $message\nCause: $cause\nStackTrace: $stackTrace';
}
