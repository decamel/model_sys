part of 'calculation_bloc.dart';

@immutable
abstract class CalculationEvent {}

class CalculationRun extends CalculationEvent {
  final double step;

  CalculationRun(this.step);
}

class CalculationRestoreFrom {
  final List<StepValues> data;

  CalculationRestoreFrom(this.data);
}
