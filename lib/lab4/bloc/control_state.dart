part of 'control_bloc.dart';

@freezed
class ControlState with _$ControlState {
  const factory ControlState.initial() = _Initial;
  const factory ControlState.generated({
    required List<double> noize,
    required Selection filtered,
    required List<double> corelation,
    required List<double> corelationReal,
    required double step,
  }) = _Generated;
}
