import 'package:pokedex_app/core/errors/app_exception.dart';

final class PokemonException extends AppException {
  const PokemonException(super.message, [super.cause, super.stackTrace]);
}
