import 'package:flutter/material.dart';
import 'package:modeling/lab3/generator.dart';
import 'package:modeling/lab5/StatsJoin.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Stage extends StatelessWidget {
/* ------------------------------- Attributes ------------------------------- */
  final StatsJoin stats;
  final String caption;
/* ------------------------------- Constructor ------------------------------ */
  const Stage({
    required this.caption,
    required this.stats,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          children: [
            Text(
              caption,
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(
              height: 10,
            ),
            Flexible(
              child: Row(
                children: [
                  Flexible(
                    child: SfCartesianChart(
                      primaryXAxis: NumericAxis(),
                      primaryYAxis: NumericAxis(),
                      // Enable legend
                      legend: Legend(isVisible: false),
                      // Enable tooltip
                      tooltipBehavior: TooltipBehavior(enable: true),
                      series: <ColumnSeries<Bounds, double>>[
                        ColumnSeries<Bounds, double>(
                          enableTooltip: true,
                          markerSettings: const MarkerSettings(
                            isVisible: true,
                            width: 3,
                            height: 3,
                            borderWidth: 1,
                          ),
                          dataSource: stats.histogram.bounds,
                          xValueMapper: (value, index) =>
                              stats.histogram.step * index + range[0],
                          yValueMapper: (value, index) => value.frequency,
                          xAxisName: "X",
                          yAxisName: "Y",
                          // Enable data label
                          dataLabelSettings: const DataLabelSettings(
                            isVisible: true,
                          ),
                        ),
                        ColumnSeries<Bounds, double>(
                          enableTooltip: true,
                          markerSettings: const MarkerSettings(
                            isVisible: true,
                            width: 3,
                            height: 3,
                            borderWidth: 1,
                          ),
                          dataSource: stats.histogram.bounds,
                          xValueMapper: (value, index) =>
                              stats.histogram.step * index + range[0],
                          yValueMapper: (value, index) =>
                              stats.histogram.revert(
                            value.left,
                            value.right,
                            value.average,
                          ),
                          xAxisName: "X",
                          yAxisName: "Y",
                          // Enable data label
                          dataLabelSettings: const DataLabelSettings(
                            isVisible: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: SfCartesianChart(
                      primaryXAxis: NumericAxis(),
                      primaryYAxis: NumericAxis(),
                      // Enable tooltip
                      tooltipBehavior: TooltipBehavior(enable: false),
                      // Enable legend
                      legend: Legend(
                        isVisible: false,
                      ),
                      series: <XyDataSeries>[
                        FastLineSeries(
                          dataSource: stats.theory,
                          color: Colors.blue,
                          xValueMapper: (value, index) => index * stats.step,
                          yValueMapper: (value, index) => value,
                        ),
                        FastLineSeries(
                          dataSource: stats.corelation,
                          color: Colors.yellow,
                          xValueMapper: (value, index) => index * stats.step,
                          yValueMapper: (value, index) => value,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            stats.histogram.xi < stats.histogram.dXi
                ? const Text(
                    "Распределения согласуются",
                    style: TextStyle(color: Colors.green),
                  )
                : const Text(
                    "Распределения не согласуются",
                    style: TextStyle(color: Colors.red),
                  ),
          ],
        ),
      ),
    );
  }
}
