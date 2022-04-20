// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ergstat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ErgstatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() run,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? run,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? run,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) run,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? run,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? run,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErgstatEventCopyWith<$Res> {
  factory $ErgstatEventCopyWith(
          ErgstatEvent value, $Res Function(ErgstatEvent) then) =
      _$ErgstatEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErgstatEventCopyWithImpl<$Res> implements $ErgstatEventCopyWith<$Res> {
  _$ErgstatEventCopyWithImpl(this._value, this._then);

  final ErgstatEvent _value;
  // ignore: unused_field
  final $Res Function(ErgstatEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$ErgstatEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ErgstatEvent.run()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() run,
  }) {
    return run();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? run,
  }) {
    return run?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_Started value) run,
  }) {
    return run(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? run,
  }) {
    return run?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? run,
    required TResult orElse(),
  }) {
    if (run != null) {
      return run(this);
    }
    return orElse();
  }
}

abstract class _Started implements ErgstatEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
mixin _$ErgstatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? s) loading,
    required TResult Function(
            CumulativeFrequency targetCumulative,
            CumulativeFrequency zCumulative,
            CumulativeFrequency yCumulative,
            double deltaErgodicity,
            double deltaStationarity,
            double lambdaErgodicity,
            double lambdaStationarity,
            bool hasErgodicity,
            bool hasStatinarity)
        generated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? s)? loading,
    TResult Function(
            CumulativeFrequency targetCumulative,
            CumulativeFrequency zCumulative,
            CumulativeFrequency yCumulative,
            double deltaErgodicity,
            double deltaStationarity,
            double lambdaErgodicity,
            double lambdaStationarity,
            bool hasErgodicity,
            bool hasStatinarity)?
        generated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? s)? loading,
    TResult Function(
            CumulativeFrequency targetCumulative,
            CumulativeFrequency zCumulative,
            CumulativeFrequency yCumulative,
            double deltaErgodicity,
            double deltaStationarity,
            double lambdaErgodicity,
            double lambdaStationarity,
            bool hasErgodicity,
            bool hasStatinarity)?
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
abstract class $ErgstatStateCopyWith<$Res> {
  factory $ErgstatStateCopyWith(
          ErgstatState value, $Res Function(ErgstatState) then) =
      _$ErgstatStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErgstatStateCopyWithImpl<$Res> implements $ErgstatStateCopyWith<$Res> {
  _$ErgstatStateCopyWithImpl(this._value, this._then);

  final ErgstatState _value;
  // ignore: unused_field
  final $Res Function(ErgstatState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ErgstatStateCopyWithImpl<$Res>
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
    return 'ErgstatState.initial()';
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
    required TResult Function(int? s) loading,
    required TResult Function(
            CumulativeFrequency targetCumulative,
            CumulativeFrequency zCumulative,
            CumulativeFrequency yCumulative,
            double deltaErgodicity,
            double deltaStationarity,
            double lambdaErgodicity,
            double lambdaStationarity,
            bool hasErgodicity,
            bool hasStatinarity)
        generated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? s)? loading,
    TResult Function(
            CumulativeFrequency targetCumulative,
            CumulativeFrequency zCumulative,
            CumulativeFrequency yCumulative,
            double deltaErgodicity,
            double deltaStationarity,
            double lambdaErgodicity,
            double lambdaStationarity,
            bool hasErgodicity,
            bool hasStatinarity)?
        generated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? s)? loading,
    TResult Function(
            CumulativeFrequency targetCumulative,
            CumulativeFrequency zCumulative,
            CumulativeFrequency yCumulative,
            double deltaErgodicity,
            double deltaStationarity,
            double lambdaErgodicity,
            double lambdaStationarity,
            bool hasErgodicity,
            bool hasStatinarity)?
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

abstract class _Initial implements ErgstatState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
  $Res call({int? s});
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$ErgstatStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;

  @override
  $Res call({
    Object? s = freezed,
  }) {
    return _then(_Loading(
      s: s == freezed
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({this.s});

  @override
  final int? s;

  @override
  String toString() {
    return 'ErgstatState.loading(s: $s)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loading &&
            const DeepCollectionEquality().equals(other.s, s));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(s));

  @JsonKey(ignore: true)
  @override
  _$LoadingCopyWith<_Loading> get copyWith =>
      __$LoadingCopyWithImpl<_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? s) loading,
    required TResult Function(
            CumulativeFrequency targetCumulative,
            CumulativeFrequency zCumulative,
            CumulativeFrequency yCumulative,
            double deltaErgodicity,
            double deltaStationarity,
            double lambdaErgodicity,
            double lambdaStationarity,
            bool hasErgodicity,
            bool hasStatinarity)
        generated,
  }) {
    return loading(s);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? s)? loading,
    TResult Function(
            CumulativeFrequency targetCumulative,
            CumulativeFrequency zCumulative,
            CumulativeFrequency yCumulative,
            double deltaErgodicity,
            double deltaStationarity,
            double lambdaErgodicity,
            double lambdaStationarity,
            bool hasErgodicity,
            bool hasStatinarity)?
        generated,
  }) {
    return loading?.call(s);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? s)? loading,
    TResult Function(
            CumulativeFrequency targetCumulative,
            CumulativeFrequency zCumulative,
            CumulativeFrequency yCumulative,
            double deltaErgodicity,
            double deltaStationarity,
            double lambdaErgodicity,
            double lambdaStationarity,
            bool hasErgodicity,
            bool hasStatinarity)?
        generated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(s);
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

abstract class _Loading implements ErgstatState {
  const factory _Loading({final int? s}) = _$_Loading;

  int? get s => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadingCopyWith<_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GeneratedCopyWith<$Res> {
  factory _$GeneratedCopyWith(
          _Generated value, $Res Function(_Generated) then) =
      __$GeneratedCopyWithImpl<$Res>;
  $Res call(
      {CumulativeFrequency targetCumulative,
      CumulativeFrequency zCumulative,
      CumulativeFrequency yCumulative,
      double deltaErgodicity,
      double deltaStationarity,
      double lambdaErgodicity,
      double lambdaStationarity,
      bool hasErgodicity,
      bool hasStatinarity});
}

/// @nodoc
class __$GeneratedCopyWithImpl<$Res> extends _$ErgstatStateCopyWithImpl<$Res>
    implements _$GeneratedCopyWith<$Res> {
  __$GeneratedCopyWithImpl(_Generated _value, $Res Function(_Generated) _then)
      : super(_value, (v) => _then(v as _Generated));

  @override
  _Generated get _value => super._value as _Generated;

  @override
  $Res call({
    Object? targetCumulative = freezed,
    Object? zCumulative = freezed,
    Object? yCumulative = freezed,
    Object? deltaErgodicity = freezed,
    Object? deltaStationarity = freezed,
    Object? lambdaErgodicity = freezed,
    Object? lambdaStationarity = freezed,
    Object? hasErgodicity = freezed,
    Object? hasStatinarity = freezed,
  }) {
    return _then(_Generated(
      targetCumulative: targetCumulative == freezed
          ? _value.targetCumulative
          : targetCumulative // ignore: cast_nullable_to_non_nullable
              as CumulativeFrequency,
      zCumulative: zCumulative == freezed
          ? _value.zCumulative
          : zCumulative // ignore: cast_nullable_to_non_nullable
              as CumulativeFrequency,
      yCumulative: yCumulative == freezed
          ? _value.yCumulative
          : yCumulative // ignore: cast_nullable_to_non_nullable
              as CumulativeFrequency,
      deltaErgodicity: deltaErgodicity == freezed
          ? _value.deltaErgodicity
          : deltaErgodicity // ignore: cast_nullable_to_non_nullable
              as double,
      deltaStationarity: deltaStationarity == freezed
          ? _value.deltaStationarity
          : deltaStationarity // ignore: cast_nullable_to_non_nullable
              as double,
      lambdaErgodicity: lambdaErgodicity == freezed
          ? _value.lambdaErgodicity
          : lambdaErgodicity // ignore: cast_nullable_to_non_nullable
              as double,
      lambdaStationarity: lambdaStationarity == freezed
          ? _value.lambdaStationarity
          : lambdaStationarity // ignore: cast_nullable_to_non_nullable
              as double,
      hasErgodicity: hasErgodicity == freezed
          ? _value.hasErgodicity
          : hasErgodicity // ignore: cast_nullable_to_non_nullable
              as bool,
      hasStatinarity: hasStatinarity == freezed
          ? _value.hasStatinarity
          : hasStatinarity // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Generated implements _Generated {
  const _$_Generated(
      {required this.targetCumulative,
      required this.zCumulative,
      required this.yCumulative,
      required this.deltaErgodicity,
      required this.deltaStationarity,
      required this.lambdaErgodicity,
      required this.lambdaStationarity,
      required this.hasErgodicity,
      required this.hasStatinarity});

  @override
  final CumulativeFrequency targetCumulative;
  @override
  final CumulativeFrequency zCumulative;
  @override
  final CumulativeFrequency yCumulative;
  @override
  final double deltaErgodicity;
  @override
  final double deltaStationarity;
  @override
  final double lambdaErgodicity;
  @override
  final double lambdaStationarity;
  @override
  final bool hasErgodicity;
  @override
  final bool hasStatinarity;

  @override
  String toString() {
    return 'ErgstatState.generated(targetCumulative: $targetCumulative, zCumulative: $zCumulative, yCumulative: $yCumulative, deltaErgodicity: $deltaErgodicity, deltaStationarity: $deltaStationarity, lambdaErgodicity: $lambdaErgodicity, lambdaStationarity: $lambdaStationarity, hasErgodicity: $hasErgodicity, hasStatinarity: $hasStatinarity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Generated &&
            const DeepCollectionEquality()
                .equals(other.targetCumulative, targetCumulative) &&
            const DeepCollectionEquality()
                .equals(other.zCumulative, zCumulative) &&
            const DeepCollectionEquality()
                .equals(other.yCumulative, yCumulative) &&
            const DeepCollectionEquality()
                .equals(other.deltaErgodicity, deltaErgodicity) &&
            const DeepCollectionEquality()
                .equals(other.deltaStationarity, deltaStationarity) &&
            const DeepCollectionEquality()
                .equals(other.lambdaErgodicity, lambdaErgodicity) &&
            const DeepCollectionEquality()
                .equals(other.lambdaStationarity, lambdaStationarity) &&
            const DeepCollectionEquality()
                .equals(other.hasErgodicity, hasErgodicity) &&
            const DeepCollectionEquality()
                .equals(other.hasStatinarity, hasStatinarity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(targetCumulative),
      const DeepCollectionEquality().hash(zCumulative),
      const DeepCollectionEquality().hash(yCumulative),
      const DeepCollectionEquality().hash(deltaErgodicity),
      const DeepCollectionEquality().hash(deltaStationarity),
      const DeepCollectionEquality().hash(lambdaErgodicity),
      const DeepCollectionEquality().hash(lambdaStationarity),
      const DeepCollectionEquality().hash(hasErgodicity),
      const DeepCollectionEquality().hash(hasStatinarity));

  @JsonKey(ignore: true)
  @override
  _$GeneratedCopyWith<_Generated> get copyWith =>
      __$GeneratedCopyWithImpl<_Generated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? s) loading,
    required TResult Function(
            CumulativeFrequency targetCumulative,
            CumulativeFrequency zCumulative,
            CumulativeFrequency yCumulative,
            double deltaErgodicity,
            double deltaStationarity,
            double lambdaErgodicity,
            double lambdaStationarity,
            bool hasErgodicity,
            bool hasStatinarity)
        generated,
  }) {
    return generated(
        targetCumulative,
        zCumulative,
        yCumulative,
        deltaErgodicity,
        deltaStationarity,
        lambdaErgodicity,
        lambdaStationarity,
        hasErgodicity,
        hasStatinarity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? s)? loading,
    TResult Function(
            CumulativeFrequency targetCumulative,
            CumulativeFrequency zCumulative,
            CumulativeFrequency yCumulative,
            double deltaErgodicity,
            double deltaStationarity,
            double lambdaErgodicity,
            double lambdaStationarity,
            bool hasErgodicity,
            bool hasStatinarity)?
        generated,
  }) {
    return generated?.call(
        targetCumulative,
        zCumulative,
        yCumulative,
        deltaErgodicity,
        deltaStationarity,
        lambdaErgodicity,
        lambdaStationarity,
        hasErgodicity,
        hasStatinarity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? s)? loading,
    TResult Function(
            CumulativeFrequency targetCumulative,
            CumulativeFrequency zCumulative,
            CumulativeFrequency yCumulative,
            double deltaErgodicity,
            double deltaStationarity,
            double lambdaErgodicity,
            double lambdaStationarity,
            bool hasErgodicity,
            bool hasStatinarity)?
        generated,
    required TResult orElse(),
  }) {
    if (generated != null) {
      return generated(
          targetCumulative,
          zCumulative,
          yCumulative,
          deltaErgodicity,
          deltaStationarity,
          lambdaErgodicity,
          lambdaStationarity,
          hasErgodicity,
          hasStatinarity);
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

abstract class _Generated implements ErgstatState {
  const factory _Generated(
      {required final CumulativeFrequency targetCumulative,
      required final CumulativeFrequency zCumulative,
      required final CumulativeFrequency yCumulative,
      required final double deltaErgodicity,
      required final double deltaStationarity,
      required final double lambdaErgodicity,
      required final double lambdaStationarity,
      required final bool hasErgodicity,
      required final bool hasStatinarity}) = _$_Generated;

  CumulativeFrequency get targetCumulative =>
      throw _privateConstructorUsedError;
  CumulativeFrequency get zCumulative => throw _privateConstructorUsedError;
  CumulativeFrequency get yCumulative => throw _privateConstructorUsedError;
  double get deltaErgodicity => throw _privateConstructorUsedError;
  double get deltaStationarity => throw _privateConstructorUsedError;
  double get lambdaErgodicity => throw _privateConstructorUsedError;
  double get lambdaStationarity => throw _privateConstructorUsedError;
  bool get hasErgodicity => throw _privateConstructorUsedError;
  bool get hasStatinarity => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GeneratedCopyWith<_Generated> get copyWith =>
      throw _privateConstructorUsedError;
}
