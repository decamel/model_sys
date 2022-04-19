import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphview/GraphView.dart';
import 'package:modeling/lab2/automato.dart';

part 'graph_event.dart';
part 'graph_state.dart';
part 'graph_bloc.freezed.dart';

class GraphBloc extends Bloc<GraphEvent, GraphState> {
  GraphBloc() : super(const _Initial()) {
    on<_Reset>(_reset);
    on<_Add>(_add);
  }

  Future _reset(_Reset event, Emitter<GraphState> emit) async {
    emit(const _Initial());
  }

  Future _add(_Add event, Emitter<GraphState> emit) async {
    print('Adding node to graph');
    state.when(
      initial: () {
        final graph = Graph()..isTree = true;
        final node = Node.Id("${event.length}--${event.st}");
        graph.addNode(node);
        emit(GraphState.content(graph, event.length));
      },
      content: (graph, length) {
        final node = Node.Id("${length + 1}--${event.st}");
        final prev = graph.nodes.last;
        graph.addNode(node);
        graph.addEdge(prev, node);
        emit(GraphState.content(graph, length + 1));
      },
    );
  }
}
