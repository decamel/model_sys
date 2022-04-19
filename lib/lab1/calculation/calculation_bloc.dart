import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:modeling/lab1/constants.dart';
import 'package:modeling/lab1/step_values.dart';

part 'calculation_event.dart';
part 'calculation_state.dart';
part 'calculation_bloc.freezed.dart';

class CalculationBloc extends Bloc<CalculationEvent, CalculationState> {
  CalculationBloc() : super(CalculationState.initial()) {
    on<CalculationRun>(_run);
  }
  double resolveError(StepValuesCompose steped, StepValuesCompose halfSteped) {
    final absoluteError = (halfSteped.last.x4 - steped.last.x4).abs();
    return absoluteError / halfSteped.last.x4.abs() * 100;
  }

  Future _run(
    CalculationRun event,
    Emitter<CalculationState> emit,
  ) async {
    double step = event.step;
    List<StepHardness> hardnessPath = [];
    List<StepError> errorPath = [];
    // Creating composition
    StepValuesCompose steped = StepValuesCompose()
      ..make(StepValues.initial(), step);
    StepValuesCompose halfSteped = StepValuesCompose()
      ..make(StepValues.initial(), step / 2);
    // Running calculations

    double error = resolveError(steped, halfSteped);

    emit(CalculationState.processing(hardnessPath, errorPath));
    if (kDebugMode) {
      print("Error: $error; Hardness: ${halfSteped.hardness}, Step: $step");
    }

    while (error > allowedError) {
      errorPath.add(StepError(error, step));
      hardnessPath.add(StepHardness(steped.hardness, step));

      if (kDebugMode) {
        print("Error: $error; Hardness: ${steped.hardness}, Step: $step");
      }

      step /= 2;
      steped = halfSteped;
      halfSteped = StepValuesCompose()..make(StepValues.initial(), step / 2);

      error = resolveError(steped, halfSteped);

      if (step <= pow(10, -6)) {
        break;
      }
    }

    errorPath.add(StepError(error, step));
    hardnessPath.add(StepHardness(steped.hardness, step));

    if (kDebugMode) {
      print(
          "Final results - Error: $error; Hardness: ${steped.hardness}, Step: $step");
    }

    emit(
      CalculationState.done(
        steped,
        event.step,
        step,
        hardnessPath,
        errorPath,
      ),
    );
  }
}
