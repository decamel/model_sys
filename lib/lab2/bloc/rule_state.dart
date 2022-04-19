part of 'rule_bloc.dart';

@freezed
class RuleState with _$RuleState {
  const RuleState._();

  const factory RuleState.editing({
    required Map<AutomatoSignal, List<AutomatoRule>> memorized,
    AutomatoSignal? signal,
    AutomatoOutput? output,
    AutomatoState? current,
    AutomatoState? transition,
  }) = _Editing;

  const factory RuleState.success({
    required Map<AutomatoSignal, List<AutomatoRule>> memorized,
    AutomatoSignal? signal,
    AutomatoOutput? output,
    AutomatoState? current,
    AutomatoState? transition,
  }) = _Success;

  const factory RuleState.error({
    required Map<AutomatoSignal, List<AutomatoRule>> memorized,
    AutomatoSignal? signal,
    AutomatoOutput? output,
    AutomatoState? current,
    AutomatoState? transition,
    required String error,
  }) = _Error;

  bool isAllowedSignal(AutomatoSignal signal) {
    print("Signal allowed called");

    if (current == null) {
      return true;
    }
    if (memorized.isEmpty) {
      return true;
    }
    if (!(memorized.containsKey(signal))) {
      return true;
    }
    if (memorized[signal]!.indexWhere((element) => element.from == current) ==
        -1) {
      return true;
    }
    return false;
  }

  bool isStateAllowed(AutomatoState st) {
    if (signal == null) {
      if (kDebugMode) {
        print("Current signal is empty");
      }
      return true;
    }
    if (memorized.isEmpty) {
      if (kDebugMode) {
        print("Map is empty");
      }
      return true;
    }
    if (!(memorized.containsKey(signal))) {
      if (kDebugMode) {
        print("There is no data with this signal");
      }
      return true;
    }
    print(memorized[signal]);
    print(st);
    if (memorized[signal]!.indexWhere((element) => element.from == st) == -1) {
      if (kDebugMode) {
        print("There is no state with selected signal");
      }
      return true;
    }
    return false;
  }

  bool isMemorizable() {
    if (current == null ||
        signal == null ||
        output == null ||
        transition == null) return false;
    return true;
  }
}
