import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tennis_court_scheduling/domain/entities/courts.dart';
import 'package:tennis_court_scheduling/domain/entities/courtsSchedule.dart';
import 'package:tennis_court_scheduling/domain/repositories/local_storage_repository.dart';
import 'package:tennis_court_scheduling/infraestructure/repositories/local_storage_repository_impl.dart';
import '../../../domain/repositories/court_repository.dart';
import '../../../infraestructure/repositories/court_repository_impl.dart';

final courtProvider = StateNotifierProvider<CourtNotifier, CourtState>((ref) {
  final courtsRepository = CourtsRepositoryImpl();
  final localStorageRepository = LocalStorageRepositoryImpl();

  return CourtNotifier(
      courtsRepository: courtsRepository,
      localStorageRepository: localStorageRepository);
});

class CourtNotifier extends StateNotifier<CourtState> {
  final CourtsRepository courtsRepository;
  final LocalStorageRepository localStorageRepository;
  CourtNotifier({
    required this.courtsRepository,
    required this.localStorageRepository,
  }) : super(CourtState()) {
    starterCourts();
  }

  Future starterCourts() async {
    state = state.copyWith(errorMessage: '', isLoading: true);
    try {
      await localStorageRepository.buildStarterCourts();
      final List<Courts> getCourts =
          await localStorageRepository.getAllCourts();
      final getAllCourtsSchedule =
          await localStorageRepository.getAllCourtsScheduled();
      state = state.copyWith(
          courtsData: getCourts, courtsScheduleData: getAllCourtsSchedule);
      state = state.copyWith(
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
          errorMessage: "Hubo un error cargando las canchas, intenta de nuevo",
          isLoading: false);
    }
  }

  Future saveCourtSchedule(name, date, court) async {
    state = state.copyWith(errorMessage: '', isLoading: true);
    try {
      await localStorageRepository.saveCourtSchedule(name, date, court);
      state = state.copyWith(errorMessage: '', isLoading: false);
    } catch (e) {
      state = state.copyWith(
          errorMessage: "Hubo un error guardando", isLoading: false);
    }
  }
}

class CourtState {
  List<Courts>? courtsData;
  List<CourtsSchedule>? courtsScheduleData;
  final bool isLoading;
  final String errorMessage;
  CourtState({
    this.courtsData,
    this.courtsScheduleData,
    this.isLoading = false,
    this.errorMessage = '',
  });
  CourtState copyWith({
    List<Courts>? courtsData,
    List<CourtsSchedule>? courtsScheduleData,
    bool? isLoading,
    String? errorMessage,
  }) =>
      CourtState(
        courtsData: courtsData ?? this.courtsData,
        isLoading: isLoading ?? this.isLoading,
        errorMessage: errorMessage ?? this.errorMessage,
        courtsScheduleData: courtsScheduleData ?? this.courtsScheduleData,
      );
}
