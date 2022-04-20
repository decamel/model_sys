part of 'eluvate_bloc.dart';

@freezed
class EluvateState with _$EluvateState {
  const factory EluvateState.initial() = _Initial;
  const factory EluvateState.loading() = _Loading;
  const factory EluvateState.generated({
    required Selection init,
    required StatsJoin normalized,
    required StatsJoin filtered,
    required StatsJoin nonline,
    required StatsJoin target,
    required double step,
  }) = _Generated;
}
