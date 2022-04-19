part of 'graph_bloc.dart';

@freezed
class GraphEvent with _$GraphEvent {
  const factory GraphEvent.reset() = _Reset;
  const factory GraphEvent.add(String st, int length) = _Add;
}
