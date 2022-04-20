part of 'ergstat_bloc.dart';

@freezed
class ErgstatState with _$ErgstatState {
  const factory ErgstatState.initial() = _Initial;
  const factory ErgstatState.loading({int? s}) = _Loading;
  const factory ErgstatState.generated({
    required CumulativeFrequency targetCumulative,
    required CumulativeFrequency zCumulative,
    required CumulativeFrequency yCumulative,
    required double deltaErgodicity,
    required double deltaStationarity,
    required double lambdaErgodicity,
    required double lambdaStationarity,
    required bool hasErgodicity,
    required bool hasStatinarity,
  }) = _Generated;
}
