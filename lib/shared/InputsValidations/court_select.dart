import 'package:formz/formz.dart';

enum CourtSelectError { empty }

class CourtSelect extends FormzInput<String, CourtSelectError> {
  const CourtSelect.pure() : super.pure('');

  const CourtSelect.dirty(String value) : super.dirty(value);

  String? get errorMessage {
    if (isValid || isPure) return null;
    if (displayError == CourtSelectError.empty) return 'Selecciona una cancha';
    return null;
  }

  @override
  CourtSelectError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) return CourtSelectError.empty;
    return null;
  }
}
