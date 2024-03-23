import 'package:formz/formz.dart';

// Define input validation errors
enum DateError { empty, length, format }

// Extend FormzInput and provide the input type and error type.
class Date extends FormzInput<String, DateError> {
  static final RegExp nameRegExp = RegExp(r'^[a-zA-Z0-9]+$');

  const Date.pure() : super.pure('');
  const Date.dirty(String value) : super.dirty(value);

  String? get errorMessage {
    if (isValid || isPure) return null;

    if (displayError == DateError.empty) return 'El campo es requerido';
    if (displayError == DateError.length) return 'Mínimo 6 caracteres';
    if (displayError == DateError.format) return 'Debe de tener letras';

    return null;
  }

  @override
  DateError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) return DateError.empty;
    if (value.length < 6) return DateError.length;
    if (!nameRegExp.hasMatch(value)) return DateError.format;
    return null;
  }
}
