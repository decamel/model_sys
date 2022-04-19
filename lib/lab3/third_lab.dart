import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modeling/lab3/bloc/statist_bloc.dart';
import 'package:modeling/lab3/generator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ThirdLab extends StatelessWidget {
  const ThirdLab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Лабораторная работа №3"),
      ),
      body: SafeArea(
        child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => StatistBloc()),
          ],
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Размер выборки",
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              BlocBuilder<StatistBloc, StatistState>(
                                builder: (context, state) {
                                  return ToggleButtons(
                                    children:
                                        possibleSequencePowerValues.map((e) {
                                      return Text(e.toString());
                                    }).toList(),
                                    onPressed: (int index) {
                                      BlocProvider.of<StatistBloc>(context).add(
                                        StatistEvent.changeLength(
                                          possibleSequencePowerValues[index],
                                        ),
                                      );
                                    },
                                    isSelected: possibleSequencePowerValues
                                        .map((e) => e == state.sequencePower)
                                        .toList(),
                                  );
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              BlocBuilder<StatistBloc, StatistState>(
                                builder: (context, state) {
                                  return ElevatedButton(
                                    onPressed: () {
                                      BlocProvider.of<StatistBloc>(context).add(
                                        const StatistEvent.run(),
                                      );
                                    },
                                    child: const Text("Построить"),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Аналитические значения",
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ListTile(
                                dense: true,
                                tileColor: Colors.transparent,
                                contentPadding: EdgeInsets.zero,
                                leading: const Text(
                                  "Мат. ожидание",
                                ),
                                title: BlocBuilder<StatistBloc, StatistState>(
                                  builder: (context, state) {
                                    return state.maybeWhen(
                                      done: (
                                        sequencePower,
                                        selection,
                                        histogram,
                                      ) =>
                                          Text(
                                        selection.expectation.toString(),
                                      ),
                                      orElse: () => const Text("Неизвестно"),
                                    );
                                  },
                                ),
                              ),
                              ListTile(
                                dense: true,
                                tileColor: Colors.transparent,
                                contentPadding: EdgeInsets.zero,
                                leading: const Text(
                                  "Дисперсия",
                                ),
                                title: BlocBuilder<StatistBloc, StatistState>(
                                  builder: (context, state) {
                                    return state.maybeWhen(
                                      done: (
                                        sequencePower,
                                        selection,
                                        histogram,
                                      ) =>
                                          Text(
                                        selection.dispersion.toString(),
                                      ),
                                      orElse: () => const Text("Неизвестно"),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          elevation: 10,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              children: [
                                Text(
                                  "Эксперементальные значения",
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                                Expanded(
                                  child: ListView(
                                    children: [
                                      ListTile(
                                        dense: true,
                                        contentPadding: EdgeInsets.zero,
                                        tileColor: Colors.transparent,
                                        leading: const Text(
                                          "Мат. ожидание",
                                        ),
                                        title: BlocBuilder<StatistBloc,
                                            StatistState>(
                                          builder: (context, state) {
                                            return state.maybeWhen(
                                              done: (
                                                sequencePower,
                                                selection,
                                                histogram,
                                              ) =>
                                                  Text(
                                                histogram.expectation
                                                    .toString(),
                                              ),
                                              orElse: () =>
                                                  const Text("Неизвестно"),
                                            );
                                          },
                                        ),
                                      ),
                                      ListTile(
                                        dense: true,
                                        tileColor: Colors.transparent,
                                        contentPadding: EdgeInsets.zero,
                                        leading: const Text(
                                          "Дисперсия",
                                        ),
                                        title: BlocBuilder<StatistBloc,
                                            StatistState>(
                                          builder: (context, state) {
                                            return state.maybeWhen(
                                              done: (
                                                sequencePower,
                                                selection,
                                                histogram,
                                              ) =>
                                                  Text(
                                                histogram.dispersion.toString(),
                                              ),
                                              orElse: () =>
                                                  const Text("Неизвестно"),
                                            );
                                          },
                                        ),
                                      ),
                                      ListTile(
                                        dense: true,
                                        tileColor: Colors.transparent,
                                        contentPadding: EdgeInsets.zero,
                                        leading: RichText(
                                          text: TextSpan(
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                            children: const [
                                              TextSpan(
                                                text:
                                                    "Величина меры расхождения X",
                                              ),
                                              TextSpan(
                                                text: "2",
                                                style: TextStyle(
                                                  fontFeatures: [
                                                    FontFeature.enable('sups')
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        title: BlocBuilder<StatistBloc,
                                            StatistState>(
                                          builder: (context, state) {
                                            return state.maybeWhen(
                                              done: (
                                                sequencePower,
                                                selection,
                                                histogram,
                                              ) =>
                                                  Text(
                                                histogram.xi.toString(),
                                              ),
                                              orElse: () =>
                                                  const Text("Неизвестно"),
                                            );
                                          },
                                        ),
                                      ),
                                      ListTile(
                                        dense: true,
                                        tileColor: Colors.transparent,
                                        contentPadding: EdgeInsets.zero,
                                        leading: RichText(
                                          text: TextSpan(
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                            children: const [
                                              TextSpan(
                                                text:
                                                    "Значение распределения X",
                                              ),
                                              TextSpan(
                                                text: "2",
                                                style: TextStyle(
                                                  fontFeatures: [
                                                    FontFeature.enable('sups')
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        title: BlocBuilder<StatistBloc,
                                            StatistState>(
                                          builder: (context, state) {
                                            return state.maybeWhen(
                                              done: (
                                                sequencePower,
                                                selection,
                                                histogram,
                                              ) =>
                                                  Text(
                                                histogram.dXi.toString(),
                                              ),
                                              orElse: () =>
                                                  const Text("Неизвестно"),
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                BlocBuilder<StatistBloc, StatistState>(
                                    builder: (context, state) {
                                  return state.maybeWhen(
                                    done:
                                        (sequencePower, selection, histogram) {
                                      return histogram.xi < histogram.dXi
                                          ? const Text(
                                              "Распределения согласуются",
                                              style: TextStyle(
                                                  color: Colors.green),
                                            )
                                          : const Text(
                                              "Распределения не согласуются",
                                              style:
                                                  TextStyle(color: Colors.red),
                                            );
                                    },
                                    orElse: () => const Text(""),
                                  );
                                }),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Flexible(
                  flex: 2,
                  child: Card(
                    color: Colors.white,
                    shadowColor: const Color.fromRGBO(80, 80, 80, 1),
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: BlocBuilder<StatistBloc, StatistState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            done: (
                              sequencePower,
                              selection,
                              histogram,
                            ) {
                              return SfCartesianChart(
                                primaryXAxis: NumericAxis(),
                                primaryYAxis: NumericAxis(),
                                // Enable legend
                                legend: Legend(isVisible: false),
                                // Enable tooltip
                                tooltipBehavior: TooltipBehavior(enable: true),
                                series: <ColumnSeries<Bounds, double>>[
                                  ColumnSeries<Bounds, double>(
                                    name: "Распределение",
                                    enableTooltip: true,
                                    legendItemText: "Распределение",
                                    markerSettings: const MarkerSettings(
                                      isVisible: true,
                                      width: 3,
                                      height: 3,
                                      borderWidth: 1,
                                    ),
                                    dataSource: histogram.bounds,
                                    xValueMapper: (value, index) =>
                                        histogram.step * index + range[0],
                                    yValueMapper: (value, index) =>
                                        value.frequency,
                                    xAxisName: "X",
                                    yAxisName: "Y",
                                    // Enable data label
                                    dataLabelSettings: const DataLabelSettings(
                                      isVisible: true,
                                    ),
                                  ),
                                  ColumnSeries(
                                    name: "Теоретический результат",
                                    dataSource: histogram.bounds,
                                    xValueMapper: (value, index) =>
                                        histogram.step * index + range[0],
                                    yValueMapper: (value, index) =>
                                        (2 * value.right - 2) /
                                            (value.right + 1) -
                                        (2 * value.left - 2) / (value.left + 1),
                                    markerSettings: const MarkerSettings(
                                      isVisible: true,
                                      width: 3,
                                      height: 3,
                                      borderWidth: 1,
                                    ),
                                    dataLabelSettings: const DataLabelSettings(
                                      isVisible: true,
                                    ),
                                  ),
                                ],
                              );
                            },
                            orElse: () => const Center(
                              child: Text(
                                  "Выберите размер выборки и запустите расчеты."),
                            ),
                          );
                        },
                      ),
                    ),
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
