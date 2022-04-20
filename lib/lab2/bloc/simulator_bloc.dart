import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:modeling/lab2/automato.dart';

part 'simulator_event.dart';
part 'simulator_state.dart';
part 'simulator_bloc.freezed.dart';

class SimulatorBloc extends Bloc<SimulatorEvent, SimulatorState> {
  Automato automato = Automato([], []);

  SimulatorBloc() : super(const SimulatorInitial()) {
    on<_InitialStateChanged>(_initialStateChanged);
    on<_Initialize>(_initialize);
    on<_SignalChanged>(_signalChanged);
    on<_MakeStep>(_makeStep);
  }

  Future _initialStateChanged(
    _InitialStateChanged event,
    Emitter<SimulatorState> emit,
  ) async {
    automato.state = event.st;
    emit(SimulatorState.initial(event.st));
  }

  Future _initialize(_Initialize event, Emitter<SimulatorState> emit) async {
    final rules = event.rules;

    List<List<AutomatoState?>> transitions = Automato.signals
        .map(
          (sig) => List<AutomatoState?>.filled(Automato.states.length, null),
        )
        .toList();

    List<List<AutomatoOutput?>> exits = Automato.signals
        .map(
          (e) => List<AutomatoOutput?>.filled(Automato.states.length, null),
        )
        .toList();

    for (var rule in rules) {
      transitions[rule.signal.index][rule.from.index] = rule.to;
      exits[rule.signal.index][rule.from.index] = rule.output;
    }

    automato.transitions = transitions;
    automato.exits = exits;
    emit(SimulatorState.initialized([], state.signal));
  }

  Future _signalChanged(
    _SignalChanged event,
    Emitter<SimulatorState> emit,
  ) async {
    emit(state.copyWith(signal: event.sig));
  }

  Future _makeStep(_MakeStep event, Emitter<SimulatorState> emit) async {
    if (state.signal == null) {
      if (kDebugMode) {
        print("Exited due to empty signal");
      }
      return null;
    }
    if (state.maybeMap(
      initialized: (value) => false,
      orElse: () => true,
    )) {
      if (kDebugMode) {
        print("Exited due to invalid state");
      }
      return null;
    }
    final item = automato.step(state.signal!);
    final history = [...(state as SimulatorInitialized).history, item];
    if (kDebugMode) {
      print("Step result: $item");
    }
    emit((state as SimulatorInitialized).copyWith(history: history));
  }
}
