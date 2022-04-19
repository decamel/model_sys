part of 'rule_bloc.dart';

@freezed
class RuleEvent with _$RuleEvent {
  const factory RuleEvent.reset() = _Reset;
  const factory RuleEvent.signalSelected(AutomatoSignal? signal) =
      _SignalSelected;
  const factory RuleEvent.outputSelected(AutomatoOutput? output) =
      _OutputSelected;
  const factory RuleEvent.stateSelected(AutomatoState? state) = _StateSelected;
  const factory RuleEvent.transitionSelected(AutomatoState? state) =
      _TransitionSelected;
  const factory RuleEvent.memorize() = _Memorize;
  const factory RuleEvent.remove(AutomatoSignal signal, AutomatoRule rule) =
      _Remove;
  const factory RuleEvent.addRule(AutomatoRule rule) = _AddRule;
}
