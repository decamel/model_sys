part of 'statist_bloc.dart';

@freezed
class StatistEvent with _$StatistEvent {
  const factory StatistEvent.changeLength(int length) = _ChangeLength;
  const factory StatistEvent.run() = _Started;
}
