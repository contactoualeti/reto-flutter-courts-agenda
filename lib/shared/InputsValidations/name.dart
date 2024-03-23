import 'package:formz/formz.dart';

// Define input validation errors
enum NameError { empty, length, format }

// Extend FormzInput and provide the input type and error type.
class Name extends FormzInput<String, NameError> {
  static final RegExp nameRegExp = RegExp(r'^[a-zA-Z0-9]+$');

  const Name.pure() : super.pure('');
  const Name.dirty(String value) : super.dirty(value);

  String? get errorMessage {
    if (isValid || isPure) return null;

    if (displayError == NameError.empty) return 'El campo es requerido';

    return null;
  }

  @override
  NameError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) return NameError.empty;

    return null;
  }
}
