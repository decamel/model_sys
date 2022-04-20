import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:modeling/lab3/generator.dart';
import 'package:modeling/lab4/constants.dart' as predefined;
import 'package:modeling/lab4/filter.dart';
import 'package:modeling/lab4/noize_generator.dart';

part 'control_event.dart';
part 'control_state.dart';
part 'control_bloc.freezed.dart';

class ControlBloc extends Bloc<ControlEvent, ControlState> {
  ControlBloc() : super(const _Initial()) {
    on<_Generate>(_generate);
  }

  Future _generate(_Generate event, Emitter<ControlState> emit) async {
    final noize = NoizeGenerator.generate(predefined.itemsCount.toInt());
    final filtered = Filter.generate(predefined.filterF, noize);
    final bounds = <double>[
      predefined.range[0].toDouble(),
      predefined.range[1] / predefined.h
    ];

    final corelation = Filter.theoryCorelation(
        predefined.D.toDouble(), predefined.corelationF, bounds);
    final corelationR = Filter.corelation(filtered, bounds);

    emit(
      ControlState.generated(
        noize: noize,
        filtered: filtered,
        corelation: corelation,
        corelationReal: corelationR,
        step: predefined.h,
      ),
    );
  }
}
