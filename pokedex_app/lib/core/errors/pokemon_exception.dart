import 'package:pokedex_app/core/errors/app_exception.dart';

final class PokemonException extends AppException {
  const PokemonException(
    String message, [
    Object? cause,
    StackTrace? stackTrace,
  ]) : super(message, cause, stackTrace);
}
