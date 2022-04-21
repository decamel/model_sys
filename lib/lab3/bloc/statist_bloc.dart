import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:modeling/lab3/constants.dart';
import 'package:modeling/lab3/generator.dart';

part 'statist_event.dart';
part 'statist_state.dart';
part 'statist_bloc.freezed.dart';

class StatistBloc extends Bloc<StatistEvent, StatistState> {
/* ------------------------------ Dependencies ------------------------------ */

  final Generator generator = Generator()
    ..setSequencePower(possibleSequencePowerValues[0]);
/* ------------------------------- Constructor ------------------------------ */
  StatistBloc()
      : super(
          _Initial(
            sequencePower: possibleSequencePowerValues[0],
          ),
        ) {
    on<_Started>(_run);
    on<_ChangeLength>(_changeLength);
  }

  Future _run(_Started event, Emitter<StatistState> emit) async {
    emit(StatistState.executed(sequencePower: state.sequencePower));
    generator.setSequencePower(state.sequencePower);

    final selection = generator.generate(lawFx);

    final histogram = Histogram.from(selection, lawFxR, range, otherStep: true);

    emit(
      StatistState.done(
        sequencePower: state.sequencePower,
        selection: selection,
        histogram: histogram,
      ),
    );
  }

  Future _changeLength(_ChangeLength event, Emitter<StatistState> emit) async {
    emit(state.copyWith(sequencePower: event.length));
  }
}
