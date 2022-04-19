part of 'graph_bloc.dart';

@freezed
class GraphState with _$GraphState {
  const factory GraphState.initial() = _Initial;
  const factory GraphState.content(Graph graph, int length) = _Content;
}
