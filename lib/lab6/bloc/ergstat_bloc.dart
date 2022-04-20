import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:modeling/lab3/constants.dart';
import 'package:modeling/lab3/generator.dart';
import 'package:modeling/lab4/filter.dart';
import 'package:modeling/lab4/noize_generator.dart';
import 'package:modeling/lab5/func.dart';
import 'package:modeling/lab6/cumulative.dart';
import 'package:modeling/lab6/func.dart';

part 'ergstat_event.dart';
part 'ergstat_state.dart';
part 'ergstat_bloc.freezed.dart';

const m = 25;

class ErgstatBloc extends Bloc<ErgstatEvent, ErgstatState> {
  ErgstatBloc() : super(const _Initial()) {
    on<_Started>(_run);
  }

  Future<List<Selection>> _generate() async {
    // Результирующие вектора
    final y = <double>[];
    final z = <double>[];
    // Моменты времени
    final t1 = Random().nextInt(1000);
    final t2 = Random().nextInt(1000);
    // Генерация выборок
    List<double> normalized;
    late Selection filteredSelection, nonlineSelection, targetSelection;
    for (var i = 0; i < 1000; i++) {
      normalized = NoizeGenerator.generateNormalized(1000);
      filteredSelection = Filter.generate(reducedFilterF, normalized);
      nonlineSelection = filteredSelection.transform(nonlineTransformF);
      targetSelection = nonlineSelection.transform(lawFx);
      y.add(targetSelection.sequence[t1]);
      z.add(targetSelection.sequence[t2]);
    }

    final Selection zSelection, ySelection;
    zSelection = Selection(z);
    ySelection = Selection(y);

    return [targetSelection, zSelection, ySelection];
  }

  Future<List<Histogram>> _collect(List<Selection> selections) async {
    final histogramTarget = Histogram.from(
      selections[0],
      lawTargetR,
      [1, 3],
    );
    final histogramZ = Histogram.from(
      selections[1],
      lawTargetR,
      [1, 3],
    );
    final histogramY = Histogram.from(
      selections[2],
      lawTargetR,
      [1, 3],
    );
    return [histogramTarget, histogramZ, histogramY];
  }

  Future<List<CumulativeFrequency>> _cumulatives(
      List<Histogram> histograms) async {
    final cumulativeTarget = CumulativeFrequency(histograms[0]);
    final cumulativeZ = CumulativeFrequency(histograms[1]);
    final cumulativeY = CumulativeFrequency(histograms[2]);
    return [cumulativeTarget, cumulativeZ, cumulativeY];
  }

  Future _run(_Started event, Emitter<ErgstatState> emit) async {
    emit(const ErgstatState.loading());
    await _generate()
        .then((value) => _collect(value))
        .then((histograms) => _cumulatives(histograms))
        .then(
      (cumulatives) {
        final deltaStationarity = cumulatives[0].compare(cumulatives[2]);
        final deltaErgodicity = cumulatives[1].compare(cumulatives[2]);
        final lambdaErgodicity =
            lambda(deltaErgodicity, cumulatives[1].frequency.length, m);
        final lambdaStationarity =
            lambda(deltaStationarity, cumulatives[0].frequency.length, m);

        emit(
          ErgstatState.generated(
            targetCumulative: cumulatives[0],
            zCumulative: cumulatives[1],
            yCumulative: cumulatives[2],
            deltaErgodicity: deltaErgodicity,
            deltaStationarity: deltaStationarity,
            lambdaErgodicity: lambdaErgodicity,
            lambdaStationarity: lambdaStationarity,
            hasErgodicity: lambdaErgodicity < 1.22,
            hasStatinarity: lambdaStationarity < 1.22,
          ),
        );
      },
    );
  }
}
