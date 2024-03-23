class WrongCredential implements Exception {}

class InvalidToken implements Exception {}

class ConectionTimeout implements Exception {}

class CustomError implements Exception {
  final String message;
  //final int erroCode;

  CustomError(this.message);
}
