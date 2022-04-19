part of 'simulator_bloc.dart';

@freezed
class SimulatorEvent with _$SimulatorEvent {
  const factory SimulatorEvent.initialStateChanged(AutomatoState st) =
      _InitialStateChanged;
  const factory SimulatorEvent.init(List<AutomatoRule> rules) = _Initialize;
  const factory SimulatorEvent.signalChanged(AutomatoSignal sig) =
      _SignalChanged;
  const factory SimulatorEvent.step() = _MakeStep;
}
