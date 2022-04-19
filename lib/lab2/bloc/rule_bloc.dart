import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:modeling/lab2/automato.dart';

part 'rule_event.dart';
part 'rule_state.dart';
part 'rule_bloc.freezed.dart';

class RuleBloc extends Bloc<RuleEvent, RuleState> {
  RuleBloc() : super(const _Editing()) {
    on<_StateSelected>(_stateSelected);
    on<_OutputSelected>(_outputSelected);
    on<_SignalSelected>(_signalSelected);
    on<_TransitionSelected>(_transitionSelected);
    on<_Memorize>(_memorize);
    on<_Remove>(_remove);
    on<_AddRule>(_addRule);
    on<_Reset>(_reset);
  }

  Future _stateSelected(_StateSelected event, Emitter<RuleState> emit) async {
    final selected = event.state;
    if (kDebugMode) {
      print("Received state $selected");
    }
    emit(state.copyWith(current: selected));
  }

  Future _outputSelected(
    _OutputSelected event,
    Emitter<RuleState> emit,
  ) async {
    final output = event.output;
    emit(state.copyWith(output: output));
  }

  Future _signalSelected(
    _SignalSelected event,
    Emitter<RuleState> emit,
  ) async {
    final signal = event.signal;

    // Reset signal
    if (signal == null) {
      return emit(state.copyWith(signal: null));
    }
    if (!state.isAllowedSignal(signal)) {
      return emit(RuleState.error(
        signal: signal,
        output: state.output,
        current: state.current,
        transition: state.transition,
        memorized: state.memorized,
        error: 'Правило для $signal/${state.current} уже создано.',
      ));
    }
    emit(state.copyWith(signal: signal));
  }

  Future _transitionSelected(
    _TransitionSelected event,
    Emitter<RuleState> emit,
  ) async {
    emit(state.copyWith(transition: event.state));
  }

  Future _memorize(_Memorize event, Emitter<RuleState> emit) async {
    if (!state.isMemorizable()) {
      return;
    }

    final rule = AutomatoRule(
      signal: state.signal!,
      output: state.output!,
      from: state.current!,
      to: state.transition!,
    );

    add(RuleEvent.addRule(rule));
  }

  Future _remove(_Remove event, Emitter<RuleState> emit) async {
    if (state.memorized.isEmpty) {
      if (kDebugMode) {
        print("Rules are empty");
      }
      return;
    }

    if (!state.memorized.keys.contains(event.signal)) {
      if (kDebugMode) {
        print("Rules do not contain such signal");
      }
      return;
    }

    if (state.memorized[event.signal]!.isEmpty) {
      if (kDebugMode) {
        print("Rules for this signal are empty");
      }
      return;
    }

    List<AutomatoRule> rules = state.memorized[event.signal]!;

    rules.removeWhere((element) => element == event.rule);

    final Map<AutomatoSignal, List<AutomatoRule>> merged = state.memorized;

    if (rules.isEmpty) {
      merged.remove(event.signal);
    } else {
      merged[event.signal] = rules;
    }
    emit(RuleState.editing(memorized: merged));
  }

  Future _addRule(_AddRule event, Emitter<RuleState> emit) async {
    final rule = event.rule;
    List<AutomatoRule> rules = [];

    if (state.memorized.keys.contains(rule.signal)) {
      rules = state.memorized[rule.signal]!;
    }

    rules = [...rules, rule];

    if (kDebugMode) {
      print("Merged list $rules");
    }

    Map<AutomatoSignal, List<AutomatoRule>> merged = {
      rule.signal: rules,
    };
    final slice = <AutomatoSignal, List<AutomatoRule>>{};
    slice.addAll(state.memorized);

    slice.remove(rule.signal);

    merged.addAll(slice);
    emit(RuleState.success(memorized: merged));
  }

  Future _reset(_Reset event, Emitter<RuleState> emit) async {
    emit(const RuleState.editing());
  }
}
