part of 'simulator_bloc.dart';

@freezed
class SimulatorState with _$SimulatorState {
  const factory SimulatorState.initial(
      [AutomatoState? initialState, AutomatoSignal? signal]) = SimulatorInitial;
  const factory SimulatorState.initialized(List<AutomatoHistoryItem> history,
      [AutomatoSignal? signal]) = SimulatorInitialized;
}
