import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modeling/lab4/controls.dart';
import 'package:modeling/lab5/bloc/eluvate_bloc.dart';
import 'package:modeling/lab5/stage.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class FithLab extends StatelessWidget {
  const FithLab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Лабораторная работа №5"),
          bottom: const TabBar(
            padding: EdgeInsets.zero,
            tabs: [
              Tab(
                height: 20,
                icon: Icon(Icons.area_chart),
                text: "Графики результатов",
              ),
              Tab(
                height: 20,
                icon: Icon(Icons.bar_chart_sharp),
                text: "График белого шума",
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: MultiBlocProvider(
            providers: [BlocProvider(create: (_) => EluvateBloc())],
            child: Column(
              children: [
                Center(
                  child: BlocBuilder<EluvateBloc, EluvateState>(
                    builder: (context, state) {
                      return CountingControls(
                        onStart: () {
                          BlocProvider.of<EluvateBloc>(context).add(
                            const EluvateEvent.generate(),
                          );
                        },
                      );
                    },
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      BlocBuilder<EluvateBloc, EluvateState>(
                        builder: (context, state) {
                          return state.when(
                            initial: () => const Center(
                              child: Text("Запустите расчеты"),
                            ),
                            loading: () => const Center(
                                child: CircularProgressIndicator()),
                            generated: (
                              init,
                              normalized,
                              filtered,
                              nonline,
                              target,
                              step,
                            ) {
                              return Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Flexible(
                                      child: Row(
                                        children: [
                                          Flexible(
                                            child: Stage(
                                              caption:
                                                  "Стандартизованный нормальный закон",
                                              stats: normalized,
                                            ),
                                          ),
                                          Flexible(
                                            child: Stage(
                                              caption: "Формирующий фильтр",
                                              stats: filtered,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Flexible(
                                      child: Row(
                                        children: [
                                          Flexible(
                                            child: Stage(
                                              caption:
                                                  "Нелинейное преобразование",
                                              stats: nonline,
                                            ),
                                          ),
                                          Flexible(
                                            child: Stage(
                                              caption:
                                                  "Заданный закон распределения",
                                              stats: target,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                      BlocBuilder<EluvateBloc, EluvateState>(
                        builder: (context, state) {
                          return state.maybeMap(
                            generated: (state) {
                              return Padding(
                                padding: const EdgeInsets.all(10),
                                child: SfCartesianChart(
                                  primaryXAxis: NumericAxis(),
                                  primaryYAxis: NumericAxis(),
                                  // Enable tooltip
                                  tooltipBehavior:
                                      TooltipBehavior(enable: false),
                                  // Enable legend
                                  legend: Legend(
                                    isVisible: false,
                                  ),
                                  series: <XyDataSeries>[
                                    FastLineSeries(
                                      dataSource: state.init.sequence,
                                      color: Colors.blue,
                                      xValueMapper: (value, index) =>
                                          index *
                                          state.init.size /
                                          state.init.power,
                                      yValueMapper: (value, index) => value,
                                    ),
                                  ],
                                ),
                              );
                            },
                            orElse: () => const Center(
                              child: Text("Необходимо запустить эксперимент"),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
