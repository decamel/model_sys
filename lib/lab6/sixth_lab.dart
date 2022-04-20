import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modeling/lab4/controls.dart';
import 'package:modeling/lab6/bloc/ergstat_bloc.dart';
import 'package:modeling/lab6/cumulative.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SixthLab extends StatelessWidget {
  const SixthLab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Лабораторная работа №6"),
      ),
      body: MultiBlocProvider(
        providers: [BlocProvider(create: (_) => ErgstatBloc())],
        child: SafeArea(
          child: Column(
            children: [
              BlocBuilder<ErgstatBloc, ErgstatState>(
                builder: (context, state) {
                  return CountingControls(
                    onStart: () {
                      BlocProvider.of<ErgstatBloc>(context).add(
                        const ErgstatEvent.run(),
                      );
                    },
                  );
                },
              ),
              Expanded(
                child: Row(
                  children: [
                    Flexible(
                      child: BlocBuilder<ErgstatBloc, ErgstatState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            loading: (s) => const Center(
                                child: CircularProgressIndicator()),
                            generated: (
                              targetCumulative,
                              zCumulative,
                              yCumulative,
                              deltaErgodicity,
                              deltaStationarity,
                              lambdaErgodicity,
                              lambdaStationarity,
                              hasErgodicity,
                              hasStatinarity,
                            ) {
                              return Column(
                                children: [
                                  Flexible(
                                    child: SfCartesianChart(
                                      primaryXAxis: NumericAxis(),
                                      primaryYAxis: NumericAxis(),
                                      // Enable legend
                                      legend: Legend(
                                        isVisible: true,
                                        isResponsive: true,
                                        position: LegendPosition.bottom,
                                        alignment: ChartAlignment.far,
                                      ),
                                      // Enable tooltip
                                      tooltipBehavior:
                                          TooltipBehavior(enable: true),
                                      series: <XyDataSeries<double, double>>[
                                        FastLineSeries<double, double>(
                                          name: "Fz",
                                          enableTooltip: true,
                                          markerSettings: const MarkerSettings(
                                            isVisible: true,
                                            width: 3,
                                            height: 3,
                                            borderWidth: 1,
                                          ),
                                          color: Colors.blue,
                                          dataSource: zCumulative.frequency,
                                          xValueMapper: (value, index) =>
                                              zCumulative.step * index +
                                              zCumulative.left,
                                          yValueMapper: (value, index) =>
                                              zCumulative.frequency[index],
                                          xAxisName: "X",
                                          yAxisName: "Y",
                                          // Enable data label
                                          dataLabelSettings:
                                              const DataLabelSettings(
                                            isVisible: false,
                                          ),
                                        ),
                                        FastLineSeries<double, double>(
                                          name: "Fy",
                                          enableTooltip: true,
                                          markerSettings: const MarkerSettings(
                                            isVisible: true,
                                            width: 3,
                                            height: 3,
                                            borderWidth: 1,
                                          ),
                                          color: Colors.red,
                                          dataSource: yCumulative.frequency,
                                          xValueMapper: (value, index) =>
                                              yCumulative.step * index +
                                              yCumulative.left,
                                          yValueMapper: (value, index) =>
                                              yCumulative.frequency[index],
                                          xAxisName: "X",
                                          yAxisName: "Y",
                                          // Enable data label
                                          dataLabelSettings:
                                              const DataLabelSettings(
                                            isVisible: false,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "Дельта: $deltaStationarity",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Лямбда: $lambdaStationarity",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  if (hasStatinarity)
                                    const Text(
                                      "Случайный процесс стационарен",
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 16),
                                    ),
                                  if (!hasStatinarity)
                                    const Text(
                                      "Случайный процесс не стационарен",
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 16),
                                    ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                ],
                              );
                            },
                            orElse: () => const Center(
                              child: Text("Необходимо запустить симуляцию"),
                            ),
                          );
                        },
                      ),
                    ),
                    Flexible(
                      child: BlocBuilder<ErgstatBloc, ErgstatState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            loading: (s) => const Center(
                                child: CircularProgressIndicator()),
                            generated: (
                              targetCumulative,
                              zCumulative,
                              yCumulative,
                              deltaErgodicity,
                              deltaStationarity,
                              lambdaErgodicity,
                              lambdaStationarity,
                              hasErgodicity,
                              hasStatinarity,
                            ) {
                              return Column(
                                children: [
                                  Flexible(
                                    child: SfCartesianChart(
                                      primaryXAxis: NumericAxis(),
                                      primaryYAxis: NumericAxis(),
                                      // Enable legend
                                      legend: Legend(
                                        isVisible: true,
                                        isResponsive: true,
                                        position: LegendPosition.bottom,
                                        alignment: ChartAlignment.far,
                                      ),
                                      // Enable tooltip
                                      tooltipBehavior:
                                          TooltipBehavior(enable: true),
                                      series: <XyDataSeries<double, double>>[
                                        FastLineSeries<double, double>(
                                          name: "Fz",
                                          enableTooltip: true,
                                          markerSettings: const MarkerSettings(
                                            isVisible: true,
                                            width: 3,
                                            height: 3,
                                            borderWidth: 1,
                                          ),
                                          color: Colors.blue,
                                          dataSource: zCumulative.frequency,
                                          xValueMapper: (value, index) =>
                                              zCumulative.step * index +
                                              zCumulative.left,
                                          yValueMapper: (value, index) =>
                                              zCumulative.frequency[index],
                                          xAxisName: "X",
                                          yAxisName: "Y",
                                          // Enable data label
                                          dataLabelSettings:
                                              const DataLabelSettings(
                                            isVisible: false,
                                          ),
                                        ),
                                        FastLineSeries<double, double>(
                                          name: "Fx",
                                          enableTooltip: true,
                                          markerSettings: const MarkerSettings(
                                            isVisible: true,
                                            width: 3,
                                            height: 3,
                                            borderWidth: 1,
                                          ),
                                          color: Colors.red,
                                          dataSource:
                                              targetCumulative.frequency,
                                          xValueMapper: (value, index) =>
                                              targetCumulative.step * index +
                                              targetCumulative.left,
                                          yValueMapper: (value, index) =>
                                              targetCumulative.frequency[index],
                                          xAxisName: "X",
                                          yAxisName: "Y",
                                          // Enable data label
                                          dataLabelSettings:
                                              const DataLabelSettings(
                                            isVisible: false,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "Дельта: $deltaErgodicity",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Лямбда: $lambdaErgodicity",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  if (hasErgodicity)
                                    const Text(
                                      "Случайный процесс эргодичен",
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 16),
                                    ),
                                  if (!hasErgodicity)
                                    const Text(
                                      "Случайный процесс не эргодичен",
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 16),
                                    ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                ],
                              );
                            },
                            orElse: () => const Center(
                              child: Text("Необходимо запустить симуляцию"),
                            ),
                          );
                        },
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
