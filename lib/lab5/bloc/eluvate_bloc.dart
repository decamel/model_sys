import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:modeling/lab3/constants.dart';
import 'package:modeling/lab3/generator.dart';
import 'package:modeling/lab4/filter.dart';
import 'package:modeling/lab4/noize_generator.dart';
import 'package:modeling/lab5/StatsJoin.dart';
import 'package:modeling/lab4/constants.dart' as predefined;
import 'package:modeling/lab5/func.dart';

part 'eluvate_event.dart';
part 'eluvate_state.dart';
part 'eluvate_bloc.freezed.dart';

class EluvateBloc extends Bloc<EluvateEvent, EluvateState> {
  EluvateBloc() : super(const EluvateState.initial()) {
    on<_Generate>(_generate);
    on<_Run>(_run);
  }

  Future _run(_Run event, Emitter<EluvateState> emit) async {
    const amount = 10000;
    final bounds = <double>[
      predefined.range[0].toDouble(),
      predefined.range[1] / predefined.h
    ];

    final seed = DateTime.now().millisecond;

    final noise = NoizeGenerator.generate(amount, 100);
    final noiseSelection = Selection(noise);

    final normalized = NoizeGenerator.generateNormalized(amount, seed);
    final normalizedSelection = Selection(normalized);
    final normalizedHistogram = Histogram.from(
      normalizedSelection,
      lawNormalR,
      [normalizedSelection.min, normalizedSelection.max],
    );
    final normalizedTheory = Filter.theoryCorelation(
      1,
      normalizedCorelationF,
      bounds,
    );
    final normalizedCorelation = Filter.corelation(normalizedSelection, bounds);

    final filteredSelection = Filter.generate(reducedFilterF, normalized);
    final filteredHistogram = Histogram.from(
      filteredSelection,
      lawFilteredR,
      [filteredSelection.min, filteredSelection.max],
      12,
    );
    final filteredTheory = Filter.theoryCorelation(
        filteredSelection.dispersion, reducedCorelationF, bounds);
    final filteredCorelation = Filter.corelation(filteredSelection, bounds);

    final nonlinedSelection = filteredSelection.transform(nonlineTransformF);
    final nonlinedHistogram = Histogram.from(
      nonlinedSelection,
      lawNonlineR,
      [nonlinedSelection.min, nonlinedSelection.max],
      12,
    );
    final nonlinedTheory = Filter.theoryCorelation(
        nonlinedSelection.dispersion, reducedCorelationF, bounds);
    final nonlinedCorelation = Filter.corelation(nonlinedSelection, bounds);

    final targetSelection = nonlinedSelection.transform(lawFx);
    final targetHistogram = Histogram.from(
      targetSelection,
      lawTargetR,
      [targetSelection.min, targetSelection.max],
      12,
    );
    final targetTheory = Filter.theoryCorelation(
        targetSelection.dispersion, reducedCorelationF, bounds);
    final targetCorelation = Filter.corelation(targetSelection, bounds);

    emit(
      EluvateState.generated(
        init: noiseSelection,
        normalized: StatsJoin(
          normalizedHistogram,
          normalizedSelection,
          normalizedTheory,
          normalizedCorelation,
          predefined.h,
        ),
        filtered: StatsJoin(
          filteredHistogram,
          filteredSelection,
          filteredTheory,
          filteredCorelation,
          predefined.h,
        ),
        nonline: StatsJoin(
          nonlinedHistogram,
          nonlinedSelection,
          nonlinedTheory,
          nonlinedCorelation,
          predefined.h,
        ),
        target: StatsJoin(
          targetHistogram,
          targetSelection,
          targetTheory,
          targetCorelation,
          predefined.h,
        ),
        step: predefined.h,
      ),
    );
  }

  void _generate(_Generate event, Emitter<EluvateState> emit) {
    emit(const EluvateState.loading());
    Future.delayed(const Duration(milliseconds: 200), () {
      add(const EluvateEvent.run());
    });
  }
}
