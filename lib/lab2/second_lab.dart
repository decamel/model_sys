import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphview/GraphView.dart';
import 'package:modeling/lab2/automato.dart';
import 'package:modeling/lab2/bloc/graph_bloc.dart';
import 'package:modeling/lab2/bloc/rule_bloc.dart';
import 'package:modeling/lab2/bloc/simulator_bloc.dart';

class SecondLab extends StatefulWidget {
  const SecondLab({Key? key}) : super(key: key);

  @override
  _SecondLabState createState() => _SecondLabState();
}

class _SecondLabState extends State<SecondLab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Лабораторная работа №2"),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider<SimulatorBloc>(create: (context) => SimulatorBloc()),
          BlocProvider<RuleBloc>(create: (context) => RuleBloc()),
          BlocProvider<GraphBloc>(create: (context) => GraphBloc()),
        ],
        child: BlocListener<SimulatorBloc, SimulatorState>(
          listenWhen: (previous, current) {
            return (previous is SimulatorInitialized) &&
                (current is SimulatorInitialized) &&
                previous.history.length != current.history.length;
          },
          listener: (context, state) {
            state.mapOrNull(
              initialized: (value) {
                if (value.history.isEmpty) return;
                if (kDebugMode) {
                  print("Listener fired");
                }
                BlocProvider.of<GraphBloc>(context).add(
                  GraphEvent.add(
                    value.history.last.transitioned?.name ?? 'Ошибка',
                    value.history.length,
                  ),
                );
              },
            );
          },
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.white70,
                  padding: const EdgeInsets.all(10),
                  child: const RuleSideForm(),
                ),
              ),
              const Flexible(
                child: Card(
                  color: Colors.white10,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: RulesList(),
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Card(
                      child: Simulation(),
                    ),
                    const StepController(),
                    BlocBuilder<SimulatorBloc, SimulatorState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          initialized: (history, signal) => Expanded(
                            child: ListView.builder(
                              primary: false,
                              shrinkWrap: true,
                              itemCount: history.length,
                              itemBuilder: (context, index) {
                                final item = history[index];
                                return ListTile(
                                  dense: true,
                                  title: Wrap(
                                    direction: Axis.horizontal,
                                    spacing: 5,
                                    children: [
                                      const Text("Входной сигнал"),
                                      Text(
                                        item.incomingSingal.name,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      const Icon(
                                        Icons.arrow_right_alt,
                                        color: Colors.black12,
                                        size: 14,
                                      ),
                                      if (item.output == null)
                                        Text(
                                          "Нет правила",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.red[900],
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      if (item.output != null) ...[
                                        const Text("Выходной сигнал"),
                                        Text(
                                          item.output!.value,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        const Icon(
                                          Icons.arrow_right_alt_sharp,
                                          color: Colors.black12,
                                          size: 14,
                                        ),
                                        const Text("Новое состояние"),
                                        Text(
                                          item.transitioned!.name,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )
                                      ],
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          orElse: () => const Expanded(
                            child: Center(
                              child:
                                  Text("Задайте правила и запустите симуляцию"),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Expanded(
                      child: Card(
                        color: Colors.white70,
                        child: GraphClusterViewPage(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StepController extends StatelessWidget {
  const StepController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Wrap(
            direction: Axis.vertical,
            alignment: WrapAlignment.start,
            spacing: 20,
            children: [
              Text(
                "Управление симуляцией",
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.headline6,
              ),
              BlocBuilder<SimulatorBloc, SimulatorState>(
                builder: (context, state) {
                  return ToggleButtons(
                    children:
                        Automato.signals.map((sig) => Text(sig.name)).toList(),
                    onPressed: (int index) {
                      BlocProvider.of<SimulatorBloc>(context).add(
                        SimulatorEvent.signalChanged(
                          Automato.signals[index],
                        ),
                      );
                    },
                    isSelected: Automato.signals
                        .map<bool>(
                          (e) => state.maybeWhen<bool>(
                            initial: (initialState, signal) => signal == e,
                            initialized: (history, signal) => signal == e,
                            orElse: () => false,
                          ),
                        )
                        .toList(),
                  );
                },
              ),
              BlocBuilder<SimulatorBloc, SimulatorState>(
                builder: (context, state) {
                  return ElevatedButton(
                    onPressed: state.maybeWhen(
                      initialized: (automato, signal) => () {
                        BlocProvider.of<SimulatorBloc>(context)
                            .add(const SimulatorEvent.step());
                      },
                      orElse: () => null,
                    ),
                    child: const Text("Шаг"),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Simulation extends StatelessWidget {
  const Simulation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 20,
            children: [
              const Text("Начальное состояние автомата:"),
              BlocBuilder<SimulatorBloc, SimulatorState>(
                buildWhen: (previous, current) {
                  return current.maybeWhen(
                    initial: (st, sig) => true,
                    orElse: () => false,
                  );
                },
                builder: (context, state) {
                  return ToggleButtons(
                    children:
                        Automato.states.map((st) => Text(st.name)).toList(),
                    onPressed: (int index) {
                      BlocProvider.of<SimulatorBloc>(context).add(
                        SimulatorEvent.initialStateChanged(
                          Automato.states[index],
                        ),
                      );
                    },
                    isSelected: Automato.states
                        .map(
                          (e) => state.maybeWhen<bool>(
                            initial: (st, sig) => st == e,
                            orElse: () => false,
                          ),
                        )
                        .toList(),
                  );
                },
              ),
              BlocBuilder<RuleBloc, RuleState>(
                buildWhen: (previouse, current) {
                  return current.maybeWhen(
                    success: (memorized, signal, output, current, transition) {
                      return true;
                    },
                    orElse: () => false,
                  );
                },
                builder: (context, ruleState) {
                  return BlocBuilder<SimulatorBloc, SimulatorState>(
                    buildWhen: (previous, current) => true,
                    builder: (context, state) {
                      return ElevatedButton(
                        onPressed: state.whenOrNull<VoidCallback?>(
                          initial: (st, sig) {
                            if (st == null) {
                              return null;
                            }
                            if (ruleState.maybeWhen(
                              success: (memorized, signal, output, current,
                                      transition) =>
                                  memorized.isEmpty,
                              orElse: () => true,
                            )) {
                              return null;
                            }
                            return () =>
                                BlocProvider.of<SimulatorBloc>(context).add(
                                  SimulatorEvent.init(
                                    ruleState.memorized.values.reduce(
                                      (value, element) =>
                                          [...element, ...value],
                                    ),
                                  ),
                                );
                          },
                        ),
                        child: const Text("Запустить"),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RulesList extends StatelessWidget {
  const RulesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RuleBloc, RuleState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Перечень созданных правил",
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                BlocProvider.of<RuleBloc>(context).add(const RuleEvent.reset());
              },
              child: const Text("Сбросить все правила"),
            ),
            const SizedBox(
              height: 20,
            ),
            if (state.memorized.isEmpty)
              const Expanded(
                child: Center(
                  child: Text(
                    "Задайте правила автомата или используйте тестовые правила",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                primary: false,
                children: [
                  for (var sig in (state.memorized).keys)
                    for (var rule in state.memorized[sig]!)
                      ListTile(
                        dense: true,
                        contentPadding: EdgeInsets.zero,
                        title: Wrap(
                          children: [
                            Text(sig.name),
                            const Icon(
                              Icons.add,
                              color: Colors.black12,
                              size: 14,
                            ),
                            Text(rule.from.name),
                            const Icon(
                              Icons.arrow_right_alt,
                              color: Colors.black12,
                              size: 14,
                            ),
                            Text(rule.output.value),
                            const Icon(
                              Icons.arrow_right_alt_sharp,
                              color: Colors.black12,
                              size: 14,
                            ),
                            Text(rule.to.name),
                          ],
                        ),
                        trailing: TextButton(
                          child: const Icon(
                            Icons.remove_circle_outline,
                            size: 16,
                            color: Colors.black26,
                          ),
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.all(3)),
                          ),
                          onPressed: () {
                            BlocProvider.of<RuleBloc>(context)
                                .add(RuleEvent.remove(sig, rule));
                          },
                        ),
                      )
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class RuleSideForm extends StatelessWidget {
  const RuleSideForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Создать правило",
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(
          height: 20,
        ),
        BlocBuilder<RuleBloc, RuleState>(
          builder: (context, state) => state.maybeWhen(
              error: (memorized, signal, output, current, transition, error) {
                return Text(
                  error,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Colors.red),
                );
              },
              orElse: () => const Text("")),
        ),
        Flexible(
          child: ListView(
            primary: false,
            shrinkWrap: false,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Входной сигнал"),
                  BlocBuilder<RuleBloc, RuleState>(
                    builder: (context, state) {
                      return Column(
                        children: [
                          for (AutomatoSignal signal in Automato.signals)
                            ListTile(
                              leading: Radio<AutomatoSignal>(
                                value: signal,
                                groupValue: state.signal,
                                toggleable: true,
                                onChanged: state.isAllowedSignal(signal)
                                    ? (AutomatoSignal? value) {
                                        BlocProvider.of<RuleBloc>(context).add(
                                          RuleEvent.signalSelected(signal),
                                        );
                                      }
                                    : null,
                              ),
                              horizontalTitleGap: 0,
                              dense: true,
                              contentPadding: EdgeInsets.zero,
                              title: Text(signal.name),
                            ),
                        ],
                      );
                    },
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Выходной сигнал"),
                  BlocBuilder<RuleBloc, RuleState>(
                    builder: (context, state) {
                      return Column(
                        children: [
                          for (AutomatoOutput output in Automato.outputs)
                            ListTile(
                              leading: Radio<AutomatoOutput>(
                                value: output,
                                groupValue: state.output,
                                onChanged: (AutomatoOutput? value) {
                                  BlocProvider.of<RuleBloc>(context).add(
                                    RuleEvent.outputSelected(output),
                                  );
                                },
                              ),
                              horizontalTitleGap: 0,
                              dense: true,
                              contentPadding: EdgeInsets.zero,
                              title: Text(output.value),
                            ),
                        ],
                      );
                    },
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Состояние"),
                  BlocBuilder<RuleBloc, RuleState>(
                    builder: (context, state) {
                      return Column(
                        children: Automato.states
                            .map((st) => ListTile(
                                  leading: Radio<AutomatoState>(
                                    value: st,
                                    groupValue: state.current,
                                    toggleable: true,
                                    onChanged: state.isStateAllowed(st)
                                        ? (AutomatoState? value) {
                                            BlocProvider.of<RuleBloc>(context)
                                                .add(
                                              RuleEvent.stateSelected(value),
                                            );
                                          }
                                        : null,
                                  ),
                                  horizontalTitleGap: 0,
                                  dense: true,
                                  contentPadding: EdgeInsets.zero,
                                  title: Text(st.name),
                                ))
                            .toList(),
                      );
                    },
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Следующее состояние"),
                  BlocBuilder<RuleBloc, RuleState>(
                    builder: (context, state) {
                      return Column(
                        children: Automato.states
                            .map((st) => ListTile(
                                  leading: Radio<AutomatoState>(
                                    value: st,
                                    groupValue: state.transition,
                                    toggleable: false,
                                    onChanged: (AutomatoState? value) {
                                      BlocProvider.of<RuleBloc>(context).add(
                                        RuleEvent.transitionSelected(value),
                                      );
                                    },
                                  ),
                                  horizontalTitleGap: 0,
                                  dense: true,
                                  contentPadding: EdgeInsets.zero,
                                  title: Text(st.name),
                                ))
                            .toList(),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            BlocProvider.of<RuleBloc>(context).add(const RuleEvent.memorize());
          },
          child: const Text("Добавить правило"),
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: () {
            final rulesBloc = BlocProvider.of<RuleBloc>(context);
            rulesBloc.add(const RuleEvent.reset());
            for (var rule in defaultRules) {
              rulesBloc.add(RuleEvent.addRule(rule));
            }
          },
          child: const Text("Сгенерировать тестовые правила"),
        ),
      ],
    );
  }
}

class GraphClusterViewPage extends StatefulWidget {
  const GraphClusterViewPage({Key? key}) : super(key: key);

  @override
  _GraphClusterViewPageState createState() => _GraphClusterViewPageState();
}

class _GraphClusterViewPageState extends State<GraphClusterViewPage> {
  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      constrained: false,
      boundaryMargin: const EdgeInsets.all(20),
      minScale: 0.000001,
      maxScale: 1000,
      child: BlocBuilder<GraphBloc, GraphState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(
              child: Text("Данных нет"),
            ),
            content: (graph, length) => GraphView(
              graph: graph,
              algorithm:
                  BuchheimWalkerAlgorithm(builder, TreeEdgeRenderer(builder)),
              paint: Paint()
                ..color = Colors.green
                ..strokeWidth = 1
                ..style = PaintingStyle.stroke,
              builder: (Node node) {
                // I can decide what widget should be shown here based on the id
                var a = node.key?.value as String?;
                return rectangWidget(a);
              },
            ),
          );
        },
      ),
    );
  }

  Widget rectangWidget(String? i) {
    return Container(
      width: 200,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: Text('Шаг $i'),
    );
  }

  BuchheimWalkerConfiguration builder = BuchheimWalkerConfiguration();

  @override
  void initState() {
    builder
      ..siblingSeparation = (20)
      ..levelSeparation = (20)
      ..subtreeSeparation = (20)
      ..orientation = (BuchheimWalkerConfiguration.ORIENTATION_TOP_BOTTOM);

    super.initState();
  }
}
