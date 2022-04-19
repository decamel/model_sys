part of 'calculation_bloc.dart';

@freezed
abstract class CalculationState with _$CalculationState {
  factory CalculationState.initial() = _Initial;

  factory CalculationState.processing(
    List<StepHardness> hardness,
    List<StepError> error,
  ) = _Processing;

  factory CalculationState.done(
    StepValuesCompose values,
    double initialStep,
    double resolvedStep,
    List<StepHardness> hardness,
    List<StepError> error,
  ) = _Done;
}
