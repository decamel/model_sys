// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calculation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalculationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<StepHardness> hardness, List<StepError> error)
        processing,
    required TResult Function(
            StepValuesCompose values,
            double initialStep,
            double resolvedStep,
            List<StepHardness> hardness,
            List<StepError> error)
        done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<StepHardness> hardness, List<StepError> error)?
        processing,
    TResult Function(
            StepValuesCompose values,
            double initialStep,
            double resolvedStep,
            List<StepHardness> hardness,
            List<StepError> error)?
        done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<StepHardness> hardness, List<StepError> error)?
        processing,
    TResult Function(
            StepValuesCompose values,
            double initialStep,
            double resolvedStep,
            List<StepHardness> hardness,
            List<StepError> error)?
        done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Done value) done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_Done value)? done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_Done value)? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculationStateCopyWith<$Res> {
  factory $CalculationStateCopyWith(
          CalculationState value, $Res Function(CalculationState) then) =
      _$CalculationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CalculationStateCopyWithImpl<$Res>
    implements $CalculationStateCopyWith<$Res> {
  _$CalculationStateCopyWithImpl(this._value, this._then);

  final CalculationState _value;
  // ignore: unused_field
  final $Res Function(CalculationState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CalculationStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalculationState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CalculationState.initial'));
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
    required TResult Function(
            List<StepHardness> hardness, List<StepError> error)
        processing,
    required TResult Function(
            StepValuesCompose values,
            double initialStep,
            double resolvedStep,
            List<StepHardness> hardness,
            List<StepError> error)
        done,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<StepHardness> hardness, List<StepError> error)?
        processing,
    TResult Function(
            StepValuesCompose values,
            double initialStep,
            double resolvedStep,
            List<StepHardness> hardness,
            List<StepError> error)?
        done,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<StepHardness> hardness, List<StepError> error)?
        processing,
    TResult Function(
            StepValuesCompose values,
            double initialStep,
            double resolvedStep,
            List<StepHardness> hardness,
            List<StepError> error)?
        done,
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
    required TResult Function(_Processing value) processing,
    required TResult Function(_Done value) done,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_Done value)? done,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_Done value)? done,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CalculationState {
  factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ProcessingCopyWith<$Res> {
  factory _$ProcessingCopyWith(
          _Processing value, $Res Function(_Processing) then) =
      __$ProcessingCopyWithImpl<$Res>;
  $Res call({List<StepHardness> hardness, List<StepError> error});
}

/// @nodoc
class __$ProcessingCopyWithImpl<$Res>
    extends _$CalculationStateCopyWithImpl<$Res>
    implements _$ProcessingCopyWith<$Res> {
  __$ProcessingCopyWithImpl(
      _Processing _value, $Res Function(_Processing) _then)
      : super(_value, (v) => _then(v as _Processing));

  @override
  _Processing get _value => super._value as _Processing;

  @override
  $Res call({
    Object? hardness = freezed,
    Object? error = freezed,
  }) {
    return _then(_Processing(
      hardness == freezed
          ? _value.hardness
          : hardness // ignore: cast_nullable_to_non_nullable
              as List<StepHardness>,
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as List<StepError>,
    ));
  }
}

/// @nodoc

class _$_Processing with DiagnosticableTreeMixin implements _Processing {
  _$_Processing(final List<StepHardness> hardness, final List<StepError> error)
      : _hardness = hardness,
        _error = error;

  final List<StepHardness> _hardness;
  @override
  List<StepHardness> get hardness {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hardness);
  }

  final List<StepError> _error;
  @override
  List<StepError> get error {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_error);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalculationState.processing(hardness: $hardness, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CalculationState.processing'))
      ..add(DiagnosticsProperty('hardness', hardness))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Processing &&
            const DeepCollectionEquality().equals(other.hardness, hardness) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hardness),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$ProcessingCopyWith<_Processing> get copyWith =>
      __$ProcessingCopyWithImpl<_Processing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<StepHardness> hardness, List<StepError> error)
        processing,
    required TResult Function(
            StepValuesCompose values,
            double initialStep,
            double resolvedStep,
            List<StepHardness> hardness,
            List<StepError> error)
        done,
  }) {
    return processing(hardness, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<StepHardness> hardness, List<StepError> error)?
        processing,
    TResult Function(
            StepValuesCompose values,
            double initialStep,
            double resolvedStep,
            List<StepHardness> hardness,
            List<StepError> error)?
        done,
  }) {
    return processing?.call(hardness, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<StepHardness> hardness, List<StepError> error)?
        processing,
    TResult Function(
            StepValuesCompose values,
            double initialStep,
            double resolvedStep,
            List<StepHardness> hardness,
            List<StepError> error)?
        done,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(hardness, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Done value) done,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_Done value)? done,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_Done value)? done,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class _Processing implements CalculationState {
  factory _Processing(
          final List<StepHardness> hardness, final List<StepError> error) =
      _$_Processing;

  List<StepHardness> get hardness => throw _privateConstructorUsedError;
  List<StepError> get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ProcessingCopyWith<_Processing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DoneCopyWith<$Res> {
  factory _$DoneCopyWith(_Done value, $Res Function(_Done) then) =
      __$DoneCopyWithImpl<$Res>;
  $Res call(
      {StepValuesCompose values,
      double initialStep,
      double resolvedStep,
      List<StepHardness> hardness,
      List<StepError> error});
}

/// @nodoc
class __$DoneCopyWithImpl<$Res> extends _$CalculationStateCopyWithImpl<$Res>
    implements _$DoneCopyWith<$Res> {
  __$DoneCopyWithImpl(_Done _value, $Res Function(_Done) _then)
      : super(_value, (v) => _then(v as _Done));

  @override
  _Done get _value => super._value as _Done;

  @override
  $Res call({
    Object? values = freezed,
    Object? initialStep = freezed,
    Object? resolvedStep = freezed,
    Object? hardness = freezed,
    Object? error = freezed,
  }) {
    return _then(_Done(
      values == freezed
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as StepValuesCompose,
      initialStep == freezed
          ? _value.initialStep
          : initialStep // ignore: cast_nullable_to_non_nullable
              as double,
      resolvedStep == freezed
          ? _value.resolvedStep
          : resolvedStep // ignore: cast_nullable_to_non_nullable
              as double,
      hardness == freezed
          ? _value.hardness
          : hardness // ignore: cast_nullable_to_non_nullable
              as List<StepHardness>,
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as List<StepError>,
    ));
  }
}

/// @nodoc

class _$_Done with DiagnosticableTreeMixin implements _Done {
  _$_Done(this.values, this.initialStep, this.resolvedStep,
      final List<StepHardness> hardness, final List<StepError> error)
      : _hardness = hardness,
        _error = error;

  @override
  final StepValuesCompose values;
  @override
  final double initialStep;
  @override
  final double resolvedStep;
  final List<StepHardness> _hardness;
  @override
  List<StepHardness> get hardness {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hardness);
  }

  final List<StepError> _error;
  @override
  List<StepError> get error {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_error);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalculationState.done(values: $values, initialStep: $initialStep, resolvedStep: $resolvedStep, hardness: $hardness, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CalculationState.done'))
      ..add(DiagnosticsProperty('values', values))
      ..add(DiagnosticsProperty('initialStep', initialStep))
      ..add(DiagnosticsProperty('resolvedStep', resolvedStep))
      ..add(DiagnosticsProperty('hardness', hardness))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Done &&
            const DeepCollectionEquality().equals(other.values, values) &&
            const DeepCollectionEquality()
                .equals(other.initialStep, initialStep) &&
            const DeepCollectionEquality()
                .equals(other.resolvedStep, resolvedStep) &&
            const DeepCollectionEquality().equals(other.hardness, hardness) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(values),
      const DeepCollectionEquality().hash(initialStep),
      const DeepCollectionEquality().hash(resolvedStep),
      const DeepCollectionEquality().hash(hardness),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$DoneCopyWith<_Done> get copyWith =>
      __$DoneCopyWithImpl<_Done>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<StepHardness> hardness, List<StepError> error)
        processing,
    required TResult Function(
            StepValuesCompose values,
            double initialStep,
            double resolvedStep,
            List<StepHardness> hardness,
            List<StepError> error)
        done,
  }) {
    return done(values, initialStep, resolvedStep, hardness, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<StepHardness> hardness, List<StepError> error)?
        processing,
    TResult Function(
            StepValuesCompose values,
            double initialStep,
            double resolvedStep,
            List<StepHardness> hardness,
            List<StepError> error)?
        done,
  }) {
    return done?.call(values, initialStep, resolvedStep, hardness, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<StepHardness> hardness, List<StepError> error)?
        processing,
    TResult Function(
            StepValuesCompose values,
            double initialStep,
            double resolvedStep,
            List<StepHardness> hardness,
            List<StepError> error)?
        done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(values, initialStep, resolvedStep, hardness, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Done value) done,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_Done value)? done,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_Done value)? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _Done implements CalculationState {
  factory _Done(
      final StepValuesCompose values,
      final double initialStep,
      final double resolvedStep,
      final List<StepHardness> hardness,
      final List<StepError> error) = _$_Done;

  StepValuesCompose get values => throw _privateConstructorUsedError;
  double get initialStep => throw _privateConstructorUsedError;
  double get resolvedStep => throw _privateConstructorUsedError;
  List<StepHardness> get hardness => throw _privateConstructorUsedError;
  List<StepError> get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DoneCopyWith<_Done> get copyWith => throw _privateConstructorUsedError;
}
