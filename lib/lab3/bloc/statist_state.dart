part of 'statist_bloc.dart';

@freezed
class StatistState with _$StatistState {
  const factory StatistState.initial({required int sequencePower}) = _Initial;
  const factory StatistState.executed({required int sequencePower}) = _Executed;
  const factory StatistState.done({
    required int sequencePower,
    required Selection selection,
    required Histogram histogram,
  }) = _Done;
}
