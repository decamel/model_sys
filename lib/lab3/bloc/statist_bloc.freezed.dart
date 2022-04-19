// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'statist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StatistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int length) changeLength,
    required TResult Function() run,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int length)? changeLength,
    TResult Function()? run,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int length)? changeLength,
    TResult Function()? run,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeLength value) changeLength,
    required TResult Function(_Started value) run,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangeLength value)? changeLength,
    TResult Function(_Started value)? run,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeLength value)? changeLength,
    TResult Function(_Started value)? run,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatistEventCopyWith<$Res> {
  factory $StatistEventCopyWith(
          StatistEvent value, $Res Function(StatistEvent) then) =
      _$StatistEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$StatistEventCopyWithImpl<$Res> implements $StatistEventCopyWith<$Res> {
  _$StatistEventCopyWithImpl(this._value, this._then);

  final StatistEvent _value;
  // ignore: unused_field
  final $Res Function(StatistEvent) _then;
}

/// @nodoc
abstract class _$ChangeLengthCopyWith<$Res> {
  factory _$ChangeLengthCopyWith(
          _ChangeLength value, $Res Function(_ChangeLength) then) =
      __$ChangeLengthCopyWithImpl<$Res>;
  $Res call({int length});
}

/// @nodoc
class __$ChangeLengthCopyWithImpl<$Res> extends _$StatistEventCopyWithImpl<$Res>
    implements _$ChangeLengthCopyWith<$Res> {
  __$ChangeLengthCopyWithImpl(
      _ChangeLength _value, $Res Function(_ChangeLength) _then)
      : super(_value, (v) => _then(v as _ChangeLength));

  @override
  _ChangeLength get _value => super._value as _ChangeLength;

  @override
  $Res call({
    Object? length = freezed,
  }) {
    return _then(_ChangeLength(
      length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangeLength implements _ChangeLength {
  const _$_ChangeLength(this.length);

  @override
  final int length;

  @override
  String toString() {
    return 'StatistEvent.changeLength(length: $length)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeLength &&
            const DeepCollectionEquality().equals(other.length, length));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(length));

  @JsonKey(ignore: true)
  @override
  _$ChangeLengthCopyWith<_ChangeLength> get copyWith =>
      __$ChangeLengthCopyWithImpl<_ChangeLength>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int length) changeLength,
    required TResult Function() run,
  }) {
    return changeLength(length);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int length)? changeLength,
    TResult Function()? run,
  }) {
    return changeLength?.call(length);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int length)? changeLength,
    TResult Function()? run,
    required TResult orElse(),
  }) {
    if (changeLength != null) {
      return changeLength(length);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeLength value) changeLength,
    required TResult Function(_Started value) run,
  }) {
    return changeLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangeLength value)? changeLength,
    TResult Function(_Started value)? run,
  }) {
    return changeLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeLength value)? changeLength,
    TResult Function(_Started value)? run,
    required TResult orElse(),
  }) {
    if (changeLength != null) {
      return changeLength(this);
    }
    return orElse();
  }
}

abstract class _ChangeLength implements StatistEvent {
  const factory _ChangeLength(final int length) = _$_ChangeLength;

  int get length => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeLengthCopyWith<_ChangeLength> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$StatistEventCopyWithImpl<$Res>
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
    return 'StatistEvent.run()';
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
    required TResult Function(int length) changeLength,
    required TResult Function() run,
  }) {
    return run();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int length)? changeLength,
    TResult Function()? run,
  }) {
    return run?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int length)? changeLength,
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
    required TResult Function(_ChangeLength value) changeLength,
    required TResult Function(_Started value) run,
  }) {
    return run(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangeLength value)? changeLength,
    TResult Function(_Started value)? run,
  }) {
    return run?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeLength value)? changeLength,
    TResult Function(_Started value)? run,
    required TResult orElse(),
  }) {
    if (run != null) {
      return run(this);
    }
    return orElse();
  }
}

abstract class _Started implements StatistEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
mixin _$StatistState {
  int get sequencePower => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int sequencePower) initial,
    required TResult Function(int sequencePower) executed,
    required TResult Function(
            int sequencePower, Selection selection, Histogram histogram)
        done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int sequencePower)? initial,
    TResult Function(int sequencePower)? executed,
    TResult Function(
            int sequencePower, Selection selection, Histogram histogram)?
        done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int sequencePower)? initial,
    TResult Function(int sequencePower)? executed,
    TResult Function(
            int sequencePower, Selection selection, Histogram histogram)?
        done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Executed value) executed,
    required TResult Function(_Done value) done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Executed value)? executed,
    TResult Function(_Done value)? done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Executed value)? executed,
    TResult Function(_Done value)? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StatistStateCopyWith<StatistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatistStateCopyWith<$Res> {
  factory $StatistStateCopyWith(
          StatistState value, $Res Function(StatistState) then) =
      _$StatistStateCopyWithImpl<$Res>;
  $Res call({int sequencePower});
}

/// @nodoc
class _$StatistStateCopyWithImpl<$Res> implements $StatistStateCopyWith<$Res> {
  _$StatistStateCopyWithImpl(this._value, this._then);

  final StatistState _value;
  // ignore: unused_field
  final $Res Function(StatistState) _then;

  @override
  $Res call({
    Object? sequencePower = freezed,
  }) {
    return _then(_value.copyWith(
      sequencePower: sequencePower == freezed
          ? _value.sequencePower
          : sequencePower // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $StatistStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({int sequencePower});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$StatistStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? sequencePower = freezed,
  }) {
    return _then(_Initial(
      sequencePower: sequencePower == freezed
          ? _value.sequencePower
          : sequencePower // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.sequencePower});

  @override
  final int sequencePower;

  @override
  String toString() {
    return 'StatistState.initial(sequencePower: $sequencePower)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality()
                .equals(other.sequencePower, sequencePower));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(sequencePower));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int sequencePower) initial,
    required TResult Function(int sequencePower) executed,
    required TResult Function(
            int sequencePower, Selection selection, Histogram histogram)
        done,
  }) {
    return initial(sequencePower);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int sequencePower)? initial,
    TResult Function(int sequencePower)? executed,
    TResult Function(
            int sequencePower, Selection selection, Histogram histogram)?
        done,
  }) {
    return initial?.call(sequencePower);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int sequencePower)? initial,
    TResult Function(int sequencePower)? executed,
    TResult Function(
            int sequencePower, Selection selection, Histogram histogram)?
        done,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(sequencePower);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Executed value) executed,
    required TResult Function(_Done value) done,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Executed value)? executed,
    TResult Function(_Done value)? done,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Executed value)? executed,
    TResult Function(_Done value)? done,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements StatistState {
  const factory _Initial({required final int sequencePower}) = _$_Initial;

  @override
  int get sequencePower => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ExecutedCopyWith<$Res> implements $StatistStateCopyWith<$Res> {
  factory _$ExecutedCopyWith(_Executed value, $Res Function(_Executed) then) =
      __$ExecutedCopyWithImpl<$Res>;
  @override
  $Res call({int sequencePower});
}

/// @nodoc
class __$ExecutedCopyWithImpl<$Res> extends _$StatistStateCopyWithImpl<$Res>
    implements _$ExecutedCopyWith<$Res> {
  __$ExecutedCopyWithImpl(_Executed _value, $Res Function(_Executed) _then)
      : super(_value, (v) => _then(v as _Executed));

  @override
  _Executed get _value => super._value as _Executed;

  @override
  $Res call({
    Object? sequencePower = freezed,
  }) {
    return _then(_Executed(
      sequencePower: sequencePower == freezed
          ? _value.sequencePower
          : sequencePower // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Executed implements _Executed {
  const _$_Executed({required this.sequencePower});

  @override
  final int sequencePower;

  @override
  String toString() {
    return 'StatistState.executed(sequencePower: $sequencePower)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Executed &&
            const DeepCollectionEquality()
                .equals(other.sequencePower, sequencePower));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(sequencePower));

  @JsonKey(ignore: true)
  @override
  _$ExecutedCopyWith<_Executed> get copyWith =>
      __$ExecutedCopyWithImpl<_Executed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int sequencePower) initial,
    required TResult Function(int sequencePower) executed,
    required TResult Function(
            int sequencePower, Selection selection, Histogram histogram)
        done,
  }) {
    return executed(sequencePower);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int sequencePower)? initial,
    TResult Function(int sequencePower)? executed,
    TResult Function(
            int sequencePower, Selection selection, Histogram histogram)?
        done,
  }) {
    return executed?.call(sequencePower);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int sequencePower)? initial,
    TResult Function(int sequencePower)? executed,
    TResult Function(
            int sequencePower, Selection selection, Histogram histogram)?
        done,
    required TResult orElse(),
  }) {
    if (executed != null) {
      return executed(sequencePower);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Executed value) executed,
    required TResult Function(_Done value) done,
  }) {
    return executed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Executed value)? executed,
    TResult Function(_Done value)? done,
  }) {
    return executed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Executed value)? executed,
    TResult Function(_Done value)? done,
    required TResult orElse(),
  }) {
    if (executed != null) {
      return executed(this);
    }
    return orElse();
  }
}

abstract class _Executed implements StatistState {
  const factory _Executed({required final int sequencePower}) = _$_Executed;

  @override
  int get sequencePower => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExecutedCopyWith<_Executed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DoneCopyWith<$Res> implements $StatistStateCopyWith<$Res> {
  factory _$DoneCopyWith(_Done value, $Res Function(_Done) then) =
      __$DoneCopyWithImpl<$Res>;
  @override
  $Res call({int sequencePower, Selection selection, Histogram histogram});
}

/// @nodoc
class __$DoneCopyWithImpl<$Res> extends _$StatistStateCopyWithImpl<$Res>
    implements _$DoneCopyWith<$Res> {
  __$DoneCopyWithImpl(_Done _value, $Res Function(_Done) _then)
      : super(_value, (v) => _then(v as _Done));

  @override
  _Done get _value => super._value as _Done;

  @override
  $Res call({
    Object? sequencePower = freezed,
    Object? selection = freezed,
    Object? histogram = freezed,
  }) {
    return _then(_Done(
      sequencePower: sequencePower == freezed
          ? _value.sequencePower
          : sequencePower // ignore: cast_nullable_to_non_nullable
              as int,
      selection: selection == freezed
          ? _value.selection
          : selection // ignore: cast_nullable_to_non_nullable
              as Selection,
      histogram: histogram == freezed
          ? _value.histogram
          : histogram // ignore: cast_nullable_to_non_nullable
              as Histogram,
    ));
  }
}

/// @nodoc

class _$_Done implements _Done {
  const _$_Done(
      {required this.sequencePower,
      required this.selection,
      required this.histogram});

  @override
  final int sequencePower;
  @override
  final Selection selection;
  @override
  final Histogram histogram;

  @override
  String toString() {
    return 'StatistState.done(sequencePower: $sequencePower, selection: $selection, histogram: $histogram)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Done &&
            const DeepCollectionEquality()
                .equals(other.sequencePower, sequencePower) &&
            const DeepCollectionEquality().equals(other.selection, selection) &&
            const DeepCollectionEquality().equals(other.histogram, histogram));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sequencePower),
      const DeepCollectionEquality().hash(selection),
      const DeepCollectionEquality().hash(histogram));

  @JsonKey(ignore: true)
  @override
  _$DoneCopyWith<_Done> get copyWith =>
      __$DoneCopyWithImpl<_Done>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int sequencePower) initial,
    required TResult Function(int sequencePower) executed,
    required TResult Function(
            int sequencePower, Selection selection, Histogram histogram)
        done,
  }) {
    return done(sequencePower, selection, histogram);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int sequencePower)? initial,
    TResult Function(int sequencePower)? executed,
    TResult Function(
            int sequencePower, Selection selection, Histogram histogram)?
        done,
  }) {
    return done?.call(sequencePower, selection, histogram);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int sequencePower)? initial,
    TResult Function(int sequencePower)? executed,
    TResult Function(
            int sequencePower, Selection selection, Histogram histogram)?
        done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(sequencePower, selection, histogram);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Executed value) executed,
    required TResult Function(_Done value) done,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Executed value)? executed,
    TResult Function(_Done value)? done,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Executed value)? executed,
    TResult Function(_Done value)? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _Done implements StatistState {
  const factory _Done(
      {required final int sequencePower,
      required final Selection selection,
      required final Histogram histogram}) = _$_Done;

  @override
  int get sequencePower => throw _privateConstructorUsedError;
  Selection get selection => throw _privateConstructorUsedError;
  Histogram get histogram => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DoneCopyWith<_Done> get copyWith => throw _privateConstructorUsedError;
}
