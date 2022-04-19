// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'simulator_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SimulatorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AutomatoState st) initialStateChanged,
    required TResult Function(List<AutomatoRule> rules) init,
    required TResult Function(AutomatoSignal sig) signalChanged,
    required TResult Function() step,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AutomatoState st)? initialStateChanged,
    TResult Function(List<AutomatoRule> rules)? init,
    TResult Function(AutomatoSignal sig)? signalChanged,
    TResult Function()? step,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AutomatoState st)? initialStateChanged,
    TResult Function(List<AutomatoRule> rules)? init,
    TResult Function(AutomatoSignal sig)? signalChanged,
    TResult Function()? step,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialStateChanged value) initialStateChanged,
    required TResult Function(_Initialize value) init,
    required TResult Function(_SignalChanged value) signalChanged,
    required TResult Function(_MakeStep value) step,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialStateChanged value)? initialStateChanged,
    TResult Function(_Initialize value)? init,
    TResult Function(_SignalChanged value)? signalChanged,
    TResult Function(_MakeStep value)? step,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialStateChanged value)? initialStateChanged,
    TResult Function(_Initialize value)? init,
    TResult Function(_SignalChanged value)? signalChanged,
    TResult Function(_MakeStep value)? step,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimulatorEventCopyWith<$Res> {
  factory $SimulatorEventCopyWith(
          SimulatorEvent value, $Res Function(SimulatorEvent) then) =
      _$SimulatorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SimulatorEventCopyWithImpl<$Res>
    implements $SimulatorEventCopyWith<$Res> {
  _$SimulatorEventCopyWithImpl(this._value, this._then);

  final SimulatorEvent _value;
  // ignore: unused_field
  final $Res Function(SimulatorEvent) _then;
}

/// @nodoc
abstract class _$InitialStateChangedCopyWith<$Res> {
  factory _$InitialStateChangedCopyWith(_InitialStateChanged value,
          $Res Function(_InitialStateChanged) then) =
      __$InitialStateChangedCopyWithImpl<$Res>;
  $Res call({AutomatoState st});
}

/// @nodoc
class __$InitialStateChangedCopyWithImpl<$Res>
    extends _$SimulatorEventCopyWithImpl<$Res>
    implements _$InitialStateChangedCopyWith<$Res> {
  __$InitialStateChangedCopyWithImpl(
      _InitialStateChanged _value, $Res Function(_InitialStateChanged) _then)
      : super(_value, (v) => _then(v as _InitialStateChanged));

  @override
  _InitialStateChanged get _value => super._value as _InitialStateChanged;

  @override
  $Res call({
    Object? st = freezed,
  }) {
    return _then(_InitialStateChanged(
      st == freezed
          ? _value.st
          : st // ignore: cast_nullable_to_non_nullable
              as AutomatoState,
    ));
  }
}

/// @nodoc

class _$_InitialStateChanged
    with DiagnosticableTreeMixin
    implements _InitialStateChanged {
  const _$_InitialStateChanged(this.st);

  @override
  final AutomatoState st;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SimulatorEvent.initialStateChanged(st: $st)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SimulatorEvent.initialStateChanged'))
      ..add(DiagnosticsProperty('st', st));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InitialStateChanged &&
            const DeepCollectionEquality().equals(other.st, st));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(st));

  @JsonKey(ignore: true)
  @override
  _$InitialStateChangedCopyWith<_InitialStateChanged> get copyWith =>
      __$InitialStateChangedCopyWithImpl<_InitialStateChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AutomatoState st) initialStateChanged,
    required TResult Function(List<AutomatoRule> rules) init,
    required TResult Function(AutomatoSignal sig) signalChanged,
    required TResult Function() step,
  }) {
    return initialStateChanged(st);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AutomatoState st)? initialStateChanged,
    TResult Function(List<AutomatoRule> rules)? init,
    TResult Function(AutomatoSignal sig)? signalChanged,
    TResult Function()? step,
  }) {
    return initialStateChanged?.call(st);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AutomatoState st)? initialStateChanged,
    TResult Function(List<AutomatoRule> rules)? init,
    TResult Function(AutomatoSignal sig)? signalChanged,
    TResult Function()? step,
    required TResult orElse(),
  }) {
    if (initialStateChanged != null) {
      return initialStateChanged(st);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialStateChanged value) initialStateChanged,
    required TResult Function(_Initialize value) init,
    required TResult Function(_SignalChanged value) signalChanged,
    required TResult Function(_MakeStep value) step,
  }) {
    return initialStateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialStateChanged value)? initialStateChanged,
    TResult Function(_Initialize value)? init,
    TResult Function(_SignalChanged value)? signalChanged,
    TResult Function(_MakeStep value)? step,
  }) {
    return initialStateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialStateChanged value)? initialStateChanged,
    TResult Function(_Initialize value)? init,
    TResult Function(_SignalChanged value)? signalChanged,
    TResult Function(_MakeStep value)? step,
    required TResult orElse(),
  }) {
    if (initialStateChanged != null) {
      return initialStateChanged(this);
    }
    return orElse();
  }
}

abstract class _InitialStateChanged implements SimulatorEvent {
  const factory _InitialStateChanged(final AutomatoState st) =
      _$_InitialStateChanged;

  AutomatoState get st => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitialStateChangedCopyWith<_InitialStateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InitializeCopyWith<$Res> {
  factory _$InitializeCopyWith(
          _Initialize value, $Res Function(_Initialize) then) =
      __$InitializeCopyWithImpl<$Res>;
  $Res call({List<AutomatoRule> rules});
}

/// @nodoc
class __$InitializeCopyWithImpl<$Res> extends _$SimulatorEventCopyWithImpl<$Res>
    implements _$InitializeCopyWith<$Res> {
  __$InitializeCopyWithImpl(
      _Initialize _value, $Res Function(_Initialize) _then)
      : super(_value, (v) => _then(v as _Initialize));

  @override
  _Initialize get _value => super._value as _Initialize;

  @override
  $Res call({
    Object? rules = freezed,
  }) {
    return _then(_Initialize(
      rules == freezed
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<AutomatoRule>,
    ));
  }
}

/// @nodoc

class _$_Initialize with DiagnosticableTreeMixin implements _Initialize {
  const _$_Initialize(final List<AutomatoRule> rules) : _rules = rules;

  final List<AutomatoRule> _rules;
  @override
  List<AutomatoRule> get rules {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rules);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SimulatorEvent.init(rules: $rules)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SimulatorEvent.init'))
      ..add(DiagnosticsProperty('rules', rules));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initialize &&
            const DeepCollectionEquality().equals(other.rules, rules));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(rules));

  @JsonKey(ignore: true)
  @override
  _$InitializeCopyWith<_Initialize> get copyWith =>
      __$InitializeCopyWithImpl<_Initialize>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AutomatoState st) initialStateChanged,
    required TResult Function(List<AutomatoRule> rules) init,
    required TResult Function(AutomatoSignal sig) signalChanged,
    required TResult Function() step,
  }) {
    return init(rules);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AutomatoState st)? initialStateChanged,
    TResult Function(List<AutomatoRule> rules)? init,
    TResult Function(AutomatoSignal sig)? signalChanged,
    TResult Function()? step,
  }) {
    return init?.call(rules);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AutomatoState st)? initialStateChanged,
    TResult Function(List<AutomatoRule> rules)? init,
    TResult Function(AutomatoSignal sig)? signalChanged,
    TResult Function()? step,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(rules);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialStateChanged value) initialStateChanged,
    required TResult Function(_Initialize value) init,
    required TResult Function(_SignalChanged value) signalChanged,
    required TResult Function(_MakeStep value) step,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialStateChanged value)? initialStateChanged,
    TResult Function(_Initialize value)? init,
    TResult Function(_SignalChanged value)? signalChanged,
    TResult Function(_MakeStep value)? step,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialStateChanged value)? initialStateChanged,
    TResult Function(_Initialize value)? init,
    TResult Function(_SignalChanged value)? signalChanged,
    TResult Function(_MakeStep value)? step,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements SimulatorEvent {
  const factory _Initialize(final List<AutomatoRule> rules) = _$_Initialize;

  List<AutomatoRule> get rules => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializeCopyWith<_Initialize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SignalChangedCopyWith<$Res> {
  factory _$SignalChangedCopyWith(
          _SignalChanged value, $Res Function(_SignalChanged) then) =
      __$SignalChangedCopyWithImpl<$Res>;
  $Res call({AutomatoSignal sig});
}

/// @nodoc
class __$SignalChangedCopyWithImpl<$Res>
    extends _$SimulatorEventCopyWithImpl<$Res>
    implements _$SignalChangedCopyWith<$Res> {
  __$SignalChangedCopyWithImpl(
      _SignalChanged _value, $Res Function(_SignalChanged) _then)
      : super(_value, (v) => _then(v as _SignalChanged));

  @override
  _SignalChanged get _value => super._value as _SignalChanged;

  @override
  $Res call({
    Object? sig = freezed,
  }) {
    return _then(_SignalChanged(
      sig == freezed
          ? _value.sig
          : sig // ignore: cast_nullable_to_non_nullable
              as AutomatoSignal,
    ));
  }
}

/// @nodoc

class _$_SignalChanged with DiagnosticableTreeMixin implements _SignalChanged {
  const _$_SignalChanged(this.sig);

  @override
  final AutomatoSignal sig;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SimulatorEvent.signalChanged(sig: $sig)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SimulatorEvent.signalChanged'))
      ..add(DiagnosticsProperty('sig', sig));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignalChanged &&
            const DeepCollectionEquality().equals(other.sig, sig));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(sig));

  @JsonKey(ignore: true)
  @override
  _$SignalChangedCopyWith<_SignalChanged> get copyWith =>
      __$SignalChangedCopyWithImpl<_SignalChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AutomatoState st) initialStateChanged,
    required TResult Function(List<AutomatoRule> rules) init,
    required TResult Function(AutomatoSignal sig) signalChanged,
    required TResult Function() step,
  }) {
    return signalChanged(sig);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AutomatoState st)? initialStateChanged,
    TResult Function(List<AutomatoRule> rules)? init,
    TResult Function(AutomatoSignal sig)? signalChanged,
    TResult Function()? step,
  }) {
    return signalChanged?.call(sig);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AutomatoState st)? initialStateChanged,
    TResult Function(List<AutomatoRule> rules)? init,
    TResult Function(AutomatoSignal sig)? signalChanged,
    TResult Function()? step,
    required TResult orElse(),
  }) {
    if (signalChanged != null) {
      return signalChanged(sig);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialStateChanged value) initialStateChanged,
    required TResult Function(_Initialize value) init,
    required TResult Function(_SignalChanged value) signalChanged,
    required TResult Function(_MakeStep value) step,
  }) {
    return signalChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialStateChanged value)? initialStateChanged,
    TResult Function(_Initialize value)? init,
    TResult Function(_SignalChanged value)? signalChanged,
    TResult Function(_MakeStep value)? step,
  }) {
    return signalChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialStateChanged value)? initialStateChanged,
    TResult Function(_Initialize value)? init,
    TResult Function(_SignalChanged value)? signalChanged,
    TResult Function(_MakeStep value)? step,
    required TResult orElse(),
  }) {
    if (signalChanged != null) {
      return signalChanged(this);
    }
    return orElse();
  }
}

abstract class _SignalChanged implements SimulatorEvent {
  const factory _SignalChanged(final AutomatoSignal sig) = _$_SignalChanged;

  AutomatoSignal get sig => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SignalChangedCopyWith<_SignalChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$MakeStepCopyWith<$Res> {
  factory _$MakeStepCopyWith(_MakeStep value, $Res Function(_MakeStep) then) =
      __$MakeStepCopyWithImpl<$Res>;
}

/// @nodoc
class __$MakeStepCopyWithImpl<$Res> extends _$SimulatorEventCopyWithImpl<$Res>
    implements _$MakeStepCopyWith<$Res> {
  __$MakeStepCopyWithImpl(_MakeStep _value, $Res Function(_MakeStep) _then)
      : super(_value, (v) => _then(v as _MakeStep));

  @override
  _MakeStep get _value => super._value as _MakeStep;
}

/// @nodoc

class _$_MakeStep with DiagnosticableTreeMixin implements _MakeStep {
  const _$_MakeStep();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SimulatorEvent.step()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SimulatorEvent.step'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _MakeStep);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AutomatoState st) initialStateChanged,
    required TResult Function(List<AutomatoRule> rules) init,
    required TResult Function(AutomatoSignal sig) signalChanged,
    required TResult Function() step,
  }) {
    return step();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AutomatoState st)? initialStateChanged,
    TResult Function(List<AutomatoRule> rules)? init,
    TResult Function(AutomatoSignal sig)? signalChanged,
    TResult Function()? step,
  }) {
    return step?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AutomatoState st)? initialStateChanged,
    TResult Function(List<AutomatoRule> rules)? init,
    TResult Function(AutomatoSignal sig)? signalChanged,
    TResult Function()? step,
    required TResult orElse(),
  }) {
    if (step != null) {
      return step();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialStateChanged value) initialStateChanged,
    required TResult Function(_Initialize value) init,
    required TResult Function(_SignalChanged value) signalChanged,
    required TResult Function(_MakeStep value) step,
  }) {
    return step(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialStateChanged value)? initialStateChanged,
    TResult Function(_Initialize value)? init,
    TResult Function(_SignalChanged value)? signalChanged,
    TResult Function(_MakeStep value)? step,
  }) {
    return step?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialStateChanged value)? initialStateChanged,
    TResult Function(_Initialize value)? init,
    TResult Function(_SignalChanged value)? signalChanged,
    TResult Function(_MakeStep value)? step,
    required TResult orElse(),
  }) {
    if (step != null) {
      return step(this);
    }
    return orElse();
  }
}

abstract class _MakeStep implements SimulatorEvent {
  const factory _MakeStep() = _$_MakeStep;
}

/// @nodoc
mixin _$SimulatorState {
  AutomatoSignal? get signal => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AutomatoState? initialState, AutomatoSignal? signal)
        initial,
    required TResult Function(
            List<AutomatoHistoryItem> history, AutomatoSignal? signal)
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AutomatoState? initialState, AutomatoSignal? signal)?
        initial,
    TResult Function(List<AutomatoHistoryItem> history, AutomatoSignal? signal)?
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AutomatoState? initialState, AutomatoSignal? signal)?
        initial,
    TResult Function(List<AutomatoHistoryItem> history, AutomatoSignal? signal)?
        initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SimulatorInitial value) initial,
    required TResult Function(SimulatorInitialized value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SimulatorInitial value)? initial,
    TResult Function(SimulatorInitialized value)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SimulatorInitial value)? initial,
    TResult Function(SimulatorInitialized value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimulatorStateCopyWith<SimulatorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimulatorStateCopyWith<$Res> {
  factory $SimulatorStateCopyWith(
          SimulatorState value, $Res Function(SimulatorState) then) =
      _$SimulatorStateCopyWithImpl<$Res>;
  $Res call({AutomatoSignal? signal});
}

/// @nodoc
class _$SimulatorStateCopyWithImpl<$Res>
    implements $SimulatorStateCopyWith<$Res> {
  _$SimulatorStateCopyWithImpl(this._value, this._then);

  final SimulatorState _value;
  // ignore: unused_field
  final $Res Function(SimulatorState) _then;

  @override
  $Res call({
    Object? signal = freezed,
  }) {
    return _then(_value.copyWith(
      signal: signal == freezed
          ? _value.signal
          : signal // ignore: cast_nullable_to_non_nullable
              as AutomatoSignal?,
    ));
  }
}

/// @nodoc
abstract class $SimulatorInitialCopyWith<$Res>
    implements $SimulatorStateCopyWith<$Res> {
  factory $SimulatorInitialCopyWith(
          SimulatorInitial value, $Res Function(SimulatorInitial) then) =
      _$SimulatorInitialCopyWithImpl<$Res>;
  @override
  $Res call({AutomatoState? initialState, AutomatoSignal? signal});
}

/// @nodoc
class _$SimulatorInitialCopyWithImpl<$Res>
    extends _$SimulatorStateCopyWithImpl<$Res>
    implements $SimulatorInitialCopyWith<$Res> {
  _$SimulatorInitialCopyWithImpl(
      SimulatorInitial _value, $Res Function(SimulatorInitial) _then)
      : super(_value, (v) => _then(v as SimulatorInitial));

  @override
  SimulatorInitial get _value => super._value as SimulatorInitial;

  @override
  $Res call({
    Object? initialState = freezed,
    Object? signal = freezed,
  }) {
    return _then(SimulatorInitial(
      initialState == freezed
          ? _value.initialState
          : initialState // ignore: cast_nullable_to_non_nullable
              as AutomatoState?,
      signal == freezed
          ? _value.signal
          : signal // ignore: cast_nullable_to_non_nullable
              as AutomatoSignal?,
    ));
  }
}

/// @nodoc

class _$SimulatorInitial
    with DiagnosticableTreeMixin
    implements SimulatorInitial {
  const _$SimulatorInitial([this.initialState, this.signal]);

  @override
  final AutomatoState? initialState;
  @override
  final AutomatoSignal? signal;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SimulatorState.initial(initialState: $initialState, signal: $signal)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SimulatorState.initial'))
      ..add(DiagnosticsProperty('initialState', initialState))
      ..add(DiagnosticsProperty('signal', signal));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SimulatorInitial &&
            const DeepCollectionEquality()
                .equals(other.initialState, initialState) &&
            const DeepCollectionEquality().equals(other.signal, signal));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(initialState),
      const DeepCollectionEquality().hash(signal));

  @JsonKey(ignore: true)
  @override
  $SimulatorInitialCopyWith<SimulatorInitial> get copyWith =>
      _$SimulatorInitialCopyWithImpl<SimulatorInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AutomatoState? initialState, AutomatoSignal? signal)
        initial,
    required TResult Function(
            List<AutomatoHistoryItem> history, AutomatoSignal? signal)
        initialized,
  }) {
    return initial(initialState, signal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AutomatoState? initialState, AutomatoSignal? signal)?
        initial,
    TResult Function(List<AutomatoHistoryItem> history, AutomatoSignal? signal)?
        initialized,
  }) {
    return initial?.call(initialState, signal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AutomatoState? initialState, AutomatoSignal? signal)?
        initial,
    TResult Function(List<AutomatoHistoryItem> history, AutomatoSignal? signal)?
        initialized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(initialState, signal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SimulatorInitial value) initial,
    required TResult Function(SimulatorInitialized value) initialized,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SimulatorInitial value)? initial,
    TResult Function(SimulatorInitialized value)? initialized,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SimulatorInitial value)? initial,
    TResult Function(SimulatorInitialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SimulatorInitial implements SimulatorState {
  const factory SimulatorInitial(
      [final AutomatoState? initialState,
      final AutomatoSignal? signal]) = _$SimulatorInitial;

  AutomatoState? get initialState => throw _privateConstructorUsedError;
  @override
  AutomatoSignal? get signal => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SimulatorInitialCopyWith<SimulatorInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimulatorInitializedCopyWith<$Res>
    implements $SimulatorStateCopyWith<$Res> {
  factory $SimulatorInitializedCopyWith(SimulatorInitialized value,
          $Res Function(SimulatorInitialized) then) =
      _$SimulatorInitializedCopyWithImpl<$Res>;
  @override
  $Res call({List<AutomatoHistoryItem> history, AutomatoSignal? signal});
}

/// @nodoc
class _$SimulatorInitializedCopyWithImpl<$Res>
    extends _$SimulatorStateCopyWithImpl<$Res>
    implements $SimulatorInitializedCopyWith<$Res> {
  _$SimulatorInitializedCopyWithImpl(
      SimulatorInitialized _value, $Res Function(SimulatorInitialized) _then)
      : super(_value, (v) => _then(v as SimulatorInitialized));

  @override
  SimulatorInitialized get _value => super._value as SimulatorInitialized;

  @override
  $Res call({
    Object? history = freezed,
    Object? signal = freezed,
  }) {
    return _then(SimulatorInitialized(
      history == freezed
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<AutomatoHistoryItem>,
      signal == freezed
          ? _value.signal
          : signal // ignore: cast_nullable_to_non_nullable
              as AutomatoSignal?,
    ));
  }
}

/// @nodoc

class _$SimulatorInitialized
    with DiagnosticableTreeMixin
    implements SimulatorInitialized {
  const _$SimulatorInitialized(final List<AutomatoHistoryItem> history,
      [this.signal])
      : _history = history;

  final List<AutomatoHistoryItem> _history;
  @override
  List<AutomatoHistoryItem> get history {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_history);
  }

  @override
  final AutomatoSignal? signal;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SimulatorState.initialized(history: $history, signal: $signal)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SimulatorState.initialized'))
      ..add(DiagnosticsProperty('history', history))
      ..add(DiagnosticsProperty('signal', signal));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SimulatorInitialized &&
            const DeepCollectionEquality().equals(other.history, history) &&
            const DeepCollectionEquality().equals(other.signal, signal));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(history),
      const DeepCollectionEquality().hash(signal));

  @JsonKey(ignore: true)
  @override
  $SimulatorInitializedCopyWith<SimulatorInitialized> get copyWith =>
      _$SimulatorInitializedCopyWithImpl<SimulatorInitialized>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AutomatoState? initialState, AutomatoSignal? signal)
        initial,
    required TResult Function(
            List<AutomatoHistoryItem> history, AutomatoSignal? signal)
        initialized,
  }) {
    return initialized(history, signal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AutomatoState? initialState, AutomatoSignal? signal)?
        initial,
    TResult Function(List<AutomatoHistoryItem> history, AutomatoSignal? signal)?
        initialized,
  }) {
    return initialized?.call(history, signal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AutomatoState? initialState, AutomatoSignal? signal)?
        initial,
    TResult Function(List<AutomatoHistoryItem> history, AutomatoSignal? signal)?
        initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(history, signal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SimulatorInitial value) initial,
    required TResult Function(SimulatorInitialized value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SimulatorInitial value)? initial,
    TResult Function(SimulatorInitialized value)? initialized,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SimulatorInitial value)? initial,
    TResult Function(SimulatorInitialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class SimulatorInitialized implements SimulatorState {
  const factory SimulatorInitialized(final List<AutomatoHistoryItem> history,
      [final AutomatoSignal? signal]) = _$SimulatorInitialized;

  List<AutomatoHistoryItem> get history => throw _privateConstructorUsedError;
  @override
  AutomatoSignal? get signal => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SimulatorInitializedCopyWith<SimulatorInitialized> get copyWith =>
      throw _privateConstructorUsedError;
}
