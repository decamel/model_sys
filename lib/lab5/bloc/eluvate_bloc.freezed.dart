// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'eluvate_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EluvateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() generate,
    required TResult Function() run,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? generate,
    TResult Function()? run,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? generate,
    TResult Function()? run,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Generate value) generate,
    required TResult Function(_Run value) run,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Generate value)? generate,
    TResult Function(_Run value)? run,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Generate value)? generate,
    TResult Function(_Run value)? run,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EluvateEventCopyWith<$Res> {
  factory $EluvateEventCopyWith(
          EluvateEvent value, $Res Function(EluvateEvent) then) =
      _$EluvateEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EluvateEventCopyWithImpl<$Res> implements $EluvateEventCopyWith<$Res> {
  _$EluvateEventCopyWithImpl(this._value, this._then);

  final EluvateEvent _value;
  // ignore: unused_field
  final $Res Function(EluvateEvent) _then;
}

/// @nodoc
abstract class _$GenerateCopyWith<$Res> {
  factory _$GenerateCopyWith(_Generate value, $Res Function(_Generate) then) =
      __$GenerateCopyWithImpl<$Res>;
}

/// @nodoc
class __$GenerateCopyWithImpl<$Res> extends _$EluvateEventCopyWithImpl<$Res>
    implements _$GenerateCopyWith<$Res> {
  __$GenerateCopyWithImpl(_Generate _value, $Res Function(_Generate) _then)
      : super(_value, (v) => _then(v as _Generate));

  @override
  _Generate get _value => super._value as _Generate;
}

/// @nodoc

class _$_Generate implements _Generate {
  const _$_Generate();

  @override
  String toString() {
    return 'EluvateEvent.generate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Generate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() generate,
    required TResult Function() run,
  }) {
    return generate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? generate,
    TResult Function()? run,
  }) {
    return generate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? generate,
    TResult Function()? run,
    required TResult orElse(),
  }) {
    if (generate != null) {
      return generate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Generate value) generate,
    required TResult Function(_Run value) run,
  }) {
    return generate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Generate value)? generate,
    TResult Function(_Run value)? run,
  }) {
    return generate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Generate value)? generate,
    TResult Function(_Run value)? run,
    required TResult orElse(),
  }) {
    if (generate != null) {
      return generate(this);
    }
    return orElse();
  }
}

abstract class _Generate implements EluvateEvent {
  const factory _Generate() = _$_Generate;
}

/// @nodoc
abstract class _$RunCopyWith<$Res> {
  factory _$RunCopyWith(_Run value, $Res Function(_Run) then) =
      __$RunCopyWithImpl<$Res>;
}

/// @nodoc
class __$RunCopyWithImpl<$Res> extends _$EluvateEventCopyWithImpl<$Res>
    implements _$RunCopyWith<$Res> {
  __$RunCopyWithImpl(_Run _value, $Res Function(_Run) _then)
      : super(_value, (v) => _then(v as _Run));

  @override
  _Run get _value => super._value as _Run;
}

/// @nodoc

class _$_Run implements _Run {
  const _$_Run();

  @override
  String toString() {
    return 'EluvateEvent.run()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Run);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() generate,
    required TResult Function() run,
  }) {
    return run();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? generate,
    TResult Function()? run,
  }) {
    return run?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? generate,
    TResult Function()? run,
    required TResult orElse(),
  }) {
    if (run != null) {
      return run();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Generate value) generate,
    required TResult Function(_Run value) run,
  }) {
    return run(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Generate value)? generate,
    TResult Function(_Run value)? run,
  }) {
    return run?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Generate value)? generate,
    TResult Function(_Run value)? run,
    required TResult orElse(),
  }) {
    if (run != null) {
      return run(this);
    }
    return orElse();
  }
}

abstract class _Run implements EluvateEvent {
  const factory _Run() = _$_Run;
}

/// @nodoc
mixin _$EluvateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Selection init,
            StatsJoin normalized,
            StatsJoin filtered,
            StatsJoin nonline,
            StatsJoin target,
            double step)
        generated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Selection init, StatsJoin normalized, StatsJoin filtered,
            StatsJoin nonline, StatsJoin target, double step)?
        generated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Selection init, StatsJoin normalized, StatsJoin filtered,
            StatsJoin nonline, StatsJoin target, double step)?
        generated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Generated value) generated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Generated value)? generated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Generated value)? generated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EluvateStateCopyWith<$Res> {
  factory $EluvateStateCopyWith(
          EluvateState value, $Res Function(EluvateState) then) =
      _$EluvateStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EluvateStateCopyWithImpl<$Res> implements $EluvateStateCopyWith<$Res> {
  _$EluvateStateCopyWithImpl(this._value, this._then);

  final EluvateState _value;
  // ignore: unused_field
  final $Res Function(EluvateState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$EluvateStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'EluvateState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Selection init,
            StatsJoin normalized,
            StatsJoin filtered,
            StatsJoin nonline,
            StatsJoin target,
            double step)
        generated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Selection init, StatsJoin normalized, StatsJoin filtered,
            StatsJoin nonline, StatsJoin target, double step)?
        generated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Selection init, StatsJoin normalized, StatsJoin filtered,
            StatsJoin nonline, StatsJoin target, double step)?
        generated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Generated value) generated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Generated value)? generated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Generated value)? generated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EluvateState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$EluvateStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'EluvateState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Selection init,
            StatsJoin normalized,
            StatsJoin filtered,
            StatsJoin nonline,
            StatsJoin target,
            double step)
        generated,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Selection init, StatsJoin normalized, StatsJoin filtered,
            StatsJoin nonline, StatsJoin target, double step)?
        generated,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Selection init, StatsJoin normalized, StatsJoin filtered,
            StatsJoin nonline, StatsJoin target, double step)?
        generated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Generated value) generated,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Generated value)? generated,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Generated value)? generated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements EluvateState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$GeneratedCopyWith<$Res> {
  factory _$GeneratedCopyWith(
          _Generated value, $Res Function(_Generated) then) =
      __$GeneratedCopyWithImpl<$Res>;
  $Res call(
      {Selection init,
      StatsJoin normalized,
      StatsJoin filtered,
      StatsJoin nonline,
      StatsJoin target,
      double step});
}

/// @nodoc
class __$GeneratedCopyWithImpl<$Res> extends _$EluvateStateCopyWithImpl<$Res>
    implements _$GeneratedCopyWith<$Res> {
  __$GeneratedCopyWithImpl(_Generated _value, $Res Function(_Generated) _then)
      : super(_value, (v) => _then(v as _Generated));

  @override
  _Generated get _value => super._value as _Generated;

  @override
  $Res call({
    Object? init = freezed,
    Object? normalized = freezed,
    Object? filtered = freezed,
    Object? nonline = freezed,
    Object? target = freezed,
    Object? step = freezed,
  }) {
    return _then(_Generated(
      init: init == freezed
          ? _value.init
          : init // ignore: cast_nullable_to_non_nullable
              as Selection,
      normalized: normalized == freezed
          ? _value.normalized
          : normalized // ignore: cast_nullable_to_non_nullable
              as StatsJoin,
      filtered: filtered == freezed
          ? _value.filtered
          : filtered // ignore: cast_nullable_to_non_nullable
              as StatsJoin,
      nonline: nonline == freezed
          ? _value.nonline
          : nonline // ignore: cast_nullable_to_non_nullable
              as StatsJoin,
      target: target == freezed
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as StatsJoin,
      step: step == freezed
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Generated implements _Generated {
  const _$_Generated(
      {required this.init,
      required this.normalized,
      required this.filtered,
      required this.nonline,
      required this.target,
      required this.step});

  @override
  final Selection init;
  @override
  final StatsJoin normalized;
  @override
  final StatsJoin filtered;
  @override
  final StatsJoin nonline;
  @override
  final StatsJoin target;
  @override
  final double step;

  @override
  String toString() {
    return 'EluvateState.generated(init: $init, normalized: $normalized, filtered: $filtered, nonline: $nonline, target: $target, step: $step)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Generated &&
            const DeepCollectionEquality().equals(other.init, init) &&
            const DeepCollectionEquality()
                .equals(other.normalized, normalized) &&
            const DeepCollectionEquality().equals(other.filtered, filtered) &&
            const DeepCollectionEquality().equals(other.nonline, nonline) &&
            const DeepCollectionEquality().equals(other.target, target) &&
            const DeepCollectionEquality().equals(other.step, step));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(init),
      const DeepCollectionEquality().hash(normalized),
      const DeepCollectionEquality().hash(filtered),
      const DeepCollectionEquality().hash(nonline),
      const DeepCollectionEquality().hash(target),
      const DeepCollectionEquality().hash(step));

  @JsonKey(ignore: true)
  @override
  _$GeneratedCopyWith<_Generated> get copyWith =>
      __$GeneratedCopyWithImpl<_Generated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Selection init,
            StatsJoin normalized,
            StatsJoin filtered,
            StatsJoin nonline,
            StatsJoin target,
            double step)
        generated,
  }) {
    return generated(init, normalized, filtered, nonline, target, step);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Selection init, StatsJoin normalized, StatsJoin filtered,
            StatsJoin nonline, StatsJoin target, double step)?
        generated,
  }) {
    return generated?.call(init, normalized, filtered, nonline, target, step);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Selection init, StatsJoin normalized, StatsJoin filtered,
            StatsJoin nonline, StatsJoin target, double step)?
        generated,
    required TResult orElse(),
  }) {
    if (generated != null) {
      return generated(init, normalized, filtered, nonline, target, step);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Generated value) generated,
  }) {
    return generated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Generated value)? generated,
  }) {
    return generated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Generated value)? generated,
    required TResult orElse(),
  }) {
    if (generated != null) {
      return generated(this);
    }
    return orElse();
  }
}

abstract class _Generated implements EluvateState {
  const factory _Generated(
      {required final Selection init,
      required final StatsJoin normalized,
      required final StatsJoin filtered,
      required final StatsJoin nonline,
      required final StatsJoin target,
      required final double step}) = _$_Generated;

  Selection get init => throw _privateConstructorUsedError;
  StatsJoin get normalized => throw _privateConstructorUsedError;
  StatsJoin get filtered => throw _privateConstructorUsedError;
  StatsJoin get nonline => throw _privateConstructorUsedError;
  StatsJoin get target => throw _privateConstructorUsedError;
  double get step => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GeneratedCopyWith<_Generated> get copyWith =>
      throw _privateConstructorUsedError;
}
