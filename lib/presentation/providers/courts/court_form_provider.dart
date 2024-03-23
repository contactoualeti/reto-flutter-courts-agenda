import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';
import 'package:tennis_court_scheduling/domain/repositories/weather_repository.dart';

import '../../../domain/entities/weather.dart';
import '../../../infraestructure/repositories/weather_repository_impl.dart';
import '../../../shared/InputsValidations/court_select.dart';
import '../../../shared/InputsValidations/date.dart';
import '../../../shared/InputsValidations/name.dart';

final courtFormProvider =
    StateNotifierProvider.autoDispose<CourtFormNotifier, CourtFormState>((ref) {
  final weatherRepository = WeatherRepositoryImpl();
  return CourtFormNotifier(weatherRepository: weatherRepository);
});

class CourtFormNotifier extends StateNotifier<CourtFormState> {
  final WeatherRepository weatherRepository;
  CourtFormNotifier({
    required this.weatherRepository,
  }) : super(CourtFormState());

  onFormSubmit() async {
    await _touchEveryField();
    if (!state.isValid) {
      state = state.copyWith(errorMessage: "Falta validar al menos 1 dato");
      state = state.copyWith(errorMessage: "");
      return;
    }
    state =
        state.copyWith(isPosting: false, isFormPosted: false, errorMessage: "");
    try {
      state = state.copyWith(
          isPosting: false, isFormPosted: false, errorMessage: "");
      print('call to create schedule');
    } catch (e) {
      state = state.copyWith(
          isFormPosted: false, isPosting: false, errorMessage: "");
    }
  }

  onSelectDateChange(String value) async {
    final newDate = Date.dirty(value);
    final Weather getWeather = await weatherRepository.getWeather(value);
    state = state.copyWith(
        date: newDate,
        weatherResponse: getWeather,
        isValid: Formz.validate([newDate, state.courtSelect, state.name]));
  }

  onSelectCourtChange(String value) {
    final newCourtSelect = CourtSelect.dirty(value);
    state = state.copyWith(
        courtSelect: newCourtSelect,
        dropDownSelectCourt: value,
        isValid: Formz.validate([newCourtSelect, state.name, state.date]));
  }

  onNameChange(String value) {
    final newName = Name.dirty(value);
    state = state.copyWith(
        name: newName,
        isValid: Formz.validate([newName, state.date, state.courtSelect]));
  }

  _touchEveryField() {
    final name = Name.dirty(state.name.value);
    final courtSelect = CourtSelect.dirty(state.courtSelect.value);
    state = state.copyWith(
        isFormPosted: true,
        name: name,
        courtSelect: courtSelect,
        isValid: Formz.validate([name, courtSelect]));
  }
}

class CourtFormState {
  final bool isPosting;
  final bool isFormPosted;
  final bool isValid;
  final Name name;
  final CourtSelect courtSelect;
  final Date date;
  final String errorMessage;
  final String dropDownSelectCourt;
  final Weather? weatherResponse;

  CourtFormState({
    this.isPosting = false,
    this.isFormPosted = false,
    this.isValid = false,
    this.name = const Name.pure(),
    this.courtSelect = const CourtSelect.pure(),
    this.date = const Date.pure(),
    this.errorMessage = '',
    this.dropDownSelectCourt = '',
    this.weatherResponse,
  });

  CourtFormState copyWith({
    bool? isPosting,
    bool? isFormPosted,
    bool? isValid,
    Name? name,
    CourtSelect? courtSelect,
    Date? date,
    String? errorMessage,
    String? dropDownSelectCourt,
    Weather? weatherResponse,
  }) =>
      CourtFormState(
        isPosting: isPosting ?? this.isPosting,
        isFormPosted: isFormPosted ?? this.isFormPosted,
        isValid: isValid ?? this.isValid,
        name: name ?? this.name,
        courtSelect: courtSelect ?? this.courtSelect,
        date: date ?? this.date,
        errorMessage: errorMessage ?? this.errorMessage,
        dropDownSelectCourt: dropDownSelectCourt ?? this.dropDownSelectCourt,
        weatherResponse: weatherResponse ?? this.weatherResponse,
      );

  @override
  String toString() {
    return '''
      LoginFormState:
        isPosting: $isPosting,
        isFormPosted: $isFormPosted,
        isValid: $isValid,
        name: $name,
        courtSelect: $courtSelect,
        date: $date,
        errorMessage:$errorMessage,
        dropDownSelectCourt:$dropDownSelectCourt,
        ''';
  }
}
