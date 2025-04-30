final class MovieException implements Exception {
  final String message;
  final Object? cause;
  final Object? stackTrace;

  MovieException(this.message, [this.cause, this.stackTrace]);

  @override
  String toString() =>
      'MovieException: $message\nCause: $cause \nStackTrace: $stackTrace';
}
