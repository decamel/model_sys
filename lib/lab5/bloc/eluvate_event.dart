part of 'eluvate_bloc.dart';

@freezed
class EluvateEvent with _$EluvateEvent {
  const factory EluvateEvent.generate() = _Generate;
  const factory EluvateEvent.run() = _Run;
}
