import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modeling/lab4/bloc/control_bloc.dart';
import 'package:modeling/lab4/controls.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class FourthLab extends StatelessWidget {
  const FourthLab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Лабораторная работа №4"),
      ),
      body: SafeArea(
        child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => ControlBloc()),
          ],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BlocBuilder<ControlBloc, ControlState>(
                builder: (context, state) {
                  return CountingControls(
                    onStart: () {
                      BlocProvider.of<ControlBloc>(context).add(
                        const ControlEvent.generate(),
                      );
                    },
                  );
                },
              ),
              Expanded(
                child: Row(
                  children: [
                    Flexible(
                      child: BlocBuilder<ControlBloc, ControlState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            generated: (
                              noize,
                              filtered,
                              corelation,
                              corelationReal,
                              step,
                            ) =>
                                SfCartesianChart(
                              primaryXAxis: NumericAxis(),
                              primaryYAxis: NumericAxis(),
                              // Enable tooltip
                              tooltipBehavior: TooltipBehavior(enable: false),
                              // Enable legend
                              legend: Legend(
                                isVisible: true,
                                isResponsive: true,
                                position: LegendPosition.bottom,
                                alignment: ChartAlignment.far,
                              ),
                              series: <XyDataSeries>[
                                FastLineSeries(
                                  name: "Белый шум",
                                  dataSource: noize,
                                  xValueMapper: (value, index) => index * step,
                                  yValueMapper: (value, index) => value,
                                ),
                                FastLineSeries(
                                  name: "Формирующий фильтр",
                                  dataSource: filtered.sequence,
                                  color: Colors.yellow,
                                  xValueMapper: (value, index) => index * step,
                                  yValueMapper: (value, index) => value,
                                ),
                              ],
                            ),
                            orElse: () => const Center(
                              child: Text("Запустите генерацию"),
                            ),
                          );
                        },
                      ),
                    ),
                    Flexible(
                      child: BlocBuilder<ControlBloc, ControlState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            generated: (
                              noize,
                              filtered,
                              corelation,
                              corelationReal,
                              step,
                            ) =>
                                SfCartesianChart(
                              primaryXAxis: NumericAxis(),
                              primaryYAxis: NumericAxis(),
                              // Enable tooltip
                              tooltipBehavior: TooltipBehavior(enable: false),
                              // Enable legend
                              legend: Legend(
                                isVisible: true,
                                isResponsive: true,
                                position: LegendPosition.bottom,
                                alignment: ChartAlignment.far,
                              ),
                              series: <XyDataSeries>[
                                FastLineSeries(
                                  name: "Теоретическая кореляционная функция",
                                  dataSource: corelation,
                                  xValueMapper: (value, index) => index * step,
                                  yValueMapper: (value, index) => value,
                                ),
                                FastLineSeries(
                                  name: "Выборочная кореляционная функция",
                                  dataSource: corelationReal,
                                  xValueMapper: (value, index) => index * step,
                                  yValueMapper: (value, index) => value,
                                ),
                              ],
                            ),
                            orElse: () => const Center(
                              child: Text("Запустите генерацию"),
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
