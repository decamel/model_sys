// Кол-во входов - 3
// Кол-во выходов - 4
// Кол-во состояний - 4

import 'package:equatable/equatable.dart';

// Входящий сигнал
class AutomatoSignal extends Equatable {
  final String name;

  const AutomatoSignal(this.name);

  int get index => Automato.signals.indexOf(this);

  @override
  List<Object?> get props => [name];
}

// Выходной сигнал автомата
class AutomatoOutput extends Equatable {
  final String value;

  const AutomatoOutput(this.value);

  @override
  List<Object?> get props => [value];
}

// Состояние автомата
class AutomatoState extends Equatable {
  final String name;

  const AutomatoState(this.name);

  int get index => Automato.states.indexOf(this);

  @override
  List<Object?> get props => [name];
}

// Правило работы автомата
class AutomatoRule extends Equatable {
  final AutomatoSignal signal;
  final AutomatoOutput output;
  final AutomatoState from;
  final AutomatoState to;

  const AutomatoRule({
    required this.signal,
    required this.output,
    required this.from,
    required this.to,
  });

  @override
  List<Object?> get props => [signal, from];
}

class AutomatoHistoryItem {
  final AutomatoSignal incomingSingal;
  final AutomatoOutput? output;
  final AutomatoState? transitioned;

  AutomatoHistoryItem(this.incomingSingal, this.output, this.transitioned);

  @override
  String toString() {
    return "History: $incomingSingal, $output, $transitioned";
  }
}

/* ------------------------------ Автомат Мили ------------------------------ */
class Automato {
  static const List<AutomatoSignal> signals = [
    AutomatoSignal('X1'),
    AutomatoSignal('X2'),
    AutomatoSignal('X3'),
  ];

  static const List<AutomatoOutput> outputs = [
    AutomatoOutput('Y1'),
    AutomatoOutput('Y2'),
    AutomatoOutput('Y3'),
    AutomatoOutput('Y4'),
  ];
  static const List<AutomatoState> states = [
    AutomatoState('Z1'),
    AutomatoState('Z2'),
    AutomatoState('Z3'),
    AutomatoState('Z4'),
  ];

  // Текущее состояние автомата
  AutomatoState? state;
  // Текущий выходной сигнал
  AutomatoOutput? output;

  List<List<AutomatoState?>> transitions;
  List<List<AutomatoOutput?>> exits;

  Automato(
    this.transitions,
    this.exits,
  );

  // Приём входящего сигнала
  AutomatoHistoryItem step(
    AutomatoSignal input,
  ) {
    final newState = transition(input);
    if (newState == null) {
      return AutomatoHistoryItem(input, null, null);
    }
    final newValue = resolve(input);
    final item = AutomatoHistoryItem(
      input,
      newValue,
      newState,
    );
    state = newState;
    output = newValue;
    return item;
  }

  // Определение следующего состояния из текущего состояния
  // и поступившего сигнала
  AutomatoState? transition(AutomatoSignal signal) {
    if (state == null) {
      throw StateError("Statemachine is not initialized");
    }
    return transitions[signal.index][state!.index];
  }

  // Определение выходного сигнала из текущего состояния
  // и поступившего сигнала
  AutomatoOutput? resolve(AutomatoSignal signal) {
    if (state == null) {
      throw StateError("Statemachine is not initialized");
    }
    return exits[signal.index][state!.index];
  }
}

final defaultRules = [
/* ----------------------------------- X1 ----------------------------------- */
  // X1 + Z1
  AutomatoRule(
    signal: Automato.signals[0],
    output: Automato.outputs[0],
    from: Automato.states[0],
    to: Automato.states[1],
  ),
  // X1 + Z2
  AutomatoRule(
    signal: Automato.signals[0],
    output: Automato.outputs[1],
    from: Automato.states[1],
    to: Automato.states[2],
  ),
  // X1 + Z3
  AutomatoRule(
    signal: Automato.signals[0],
    output: Automato.outputs[2],
    from: Automato.states[2],
    to: Automato.states[0],
  ),
  // X1 + Z4
  AutomatoRule(
    signal: Automato.signals[0],
    output: Automato.outputs[1],
    from: Automato.states[3],
    to: Automato.states[0],
  ),
/* ----------------------------------- X2 ----------------------------------- */
  // X2 + Z1
  AutomatoRule(
    signal: Automato.signals[1],
    output: Automato.outputs[1],
    from: Automato.states[0],
    to: Automato.states[0],
  ),
  // X2 + Z2
  AutomatoRule(
    signal: Automato.signals[1],
    output: Automato.outputs[1],
    from: Automato.states[1],
    to: Automato.states[0],
  ),
  // X2 + Z3
  AutomatoRule(
    signal: Automato.signals[1],
    output: Automato.outputs[0],
    from: Automato.states[2],
    to: Automato.states[2],
  ),
  // X2 + Z4
  AutomatoRule(
    signal: Automato.signals[1],
    output: Automato.outputs[2],
    from: Automato.states[3],
    to: Automato.states[1],
  ),
/* ----------------------------------- X3 ----------------------------------- */
  // X3 + Z1
  AutomatoRule(
    signal: Automato.signals[2],
    output: Automato.outputs[3],
    from: Automato.states[0],
    to: Automato.states[2],
  ),
  // X3 + Z2
  AutomatoRule(
    signal: Automato.signals[2],
    output: Automato.outputs[1],
    from: Automato.states[1],
    to: Automato.states[3],
  ),
  // X3 + Z3
  AutomatoRule(
    signal: Automato.signals[2],
    output: Automato.outputs[3],
    from: Automato.states[2],
    to: Automato.states[1],
  ),
  // X3 + Z4
  AutomatoRule(
    signal: Automato.signals[2],
    output: Automato.outputs[3],
    from: Automato.states[3],
    to: Automato.states[2],
  ),
];
