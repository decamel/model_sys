import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modeling/lab1/calculation/calculation_bloc.dart';
import 'package:modeling/lab1/constants.dart';
import 'package:modeling/lab1/step_values.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

/* -------------------------------------------------------------------------- */
/*                                 Main widget                                */
/* -------------------------------------------------------------------------- */

class FirstLab extends StatelessWidget {
  const FirstLab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Лабораторная работа №1"),
      ),
      body: BlocProvider<CalculationBloc>(
        create: (context) => CalculationBloc(),
        lazy: false,
        child: const FirstLabContent(),
      ),
    );
  }
}

class FirstLabContent extends StatelessWidget {
  const FirstLabContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: GridView.count(
              crossAxisCount: 5,
              children: [
                BlocBuilder<CalculationBloc, CalculationState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () => const Center(
                        child: Text("Данные о X1 отстутствуют"),
                      ),
                      processing: (_, __) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      done: (
                        values,
                        initialStep,
                        resolvedStep,
                        hardness,
                        error,
                      ) =>
                          VariableChart<StepValues>(
                        title: 'X1',
                        xSelector: (StepValues values, int _) =>
                            values.stepMoment.toString(),
                        ySelector: (StepValues values, int _) => values.x1,
                        data: values.data,
                        xAxisName: 'Время',
                        yAxisName: 'X1',
                      ),
                    );
                  },
                ),
                BlocBuilder<CalculationBloc, CalculationState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () => const Center(
                        child: Text("Данные о X2 отстутствуют"),
                      ),
                      processing: (_, __) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      done: (
                        values,
                        initialStep,
                        resolvedStep,
                        hardness,
                        error,
                      ) =>
                          VariableChart<StepValues>(
                        title: 'X2',
                        xSelector: (StepValues values, int _) =>
                            values.stepMoment.toString(),
                        ySelector: (StepValues values, int _) => values.x2,
                        data: values.data,
                        xAxisName: 'Время',
                        yAxisName: 'X2',
                      ),
                    );
                  },
                ),
                BlocBuilder<CalculationBloc, CalculationState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () => const Center(
                        child: Text("Данные о X3 отстутствуют"),
                      ),
                      processing: (_, __) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      done: (
                        values,
                        initialStep,
                        resolvedStep,
                        hardness,
                        error,
                      ) =>
                          VariableChart<StepValues>(
                        title: 'X3',
                        xSelector: (StepValues values, int _) =>
                            values.stepMoment.toString(),
                        ySelector: (StepValues values, int _) => values.x3,
                        data: values.data,
                        xAxisName: 'Время',
                        yAxisName: 'X3',
                      ),
                    );
                  },
                ),
                BlocBuilder<CalculationBloc, CalculationState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () => const Center(
                        child: Text("Данные о X4 отстутствуют"),
                      ),
                      processing: (_, __) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      done: (
                        values,
                        initialStep,
                        resolvedStep,
                        hardness,
                        error,
                      ) =>
                          VariableChart<StepValues>(
                        title: 'X4',
                        xSelector: (StepValues values, int _) =>
                            values.stepMoment.toString(),
                        ySelector: (StepValues values, int _) => values.x4,
                        data: values.data,
                        xAxisName: 'Время',
                        yAxisName: 'X4',
                      ),
                    );
                  },
                ),
                BlocBuilder<CalculationBloc, CalculationState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () => const Center(
                        child: Text("Данные о X5 отстутствуют"),
                      ),
                      processing: (_, __) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      done: (
                        values,
                        initialStep,
                        resolvedStep,
                        hardness,
                        error,
                      ) =>
                          VariableChart<StepValues>(
                        title: 'X5',
                        xSelector: (StepValues values, int _) =>
                            values.stepMoment.toString(),
                        ySelector: (StepValues values, int _) => values.x5,
                        data: values.data,
                        xAxisName: 'Время',
                        yAxisName: 'X5',
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Card(
                    child: Column(
                      children: [
                        StepInputForm(
                          onSubmit: (String value) {
                            final step = double.tryParse(value);
                            if (step == null) {
                              return;
                            }
                            context
                                .read<CalculationBloc>()
                                .add(CalculationRun(step));
                          },
                        ),
                        Expanded(
                          child: ListView(
                            primary: false,
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(
                                parent: AlwaysScrollableScrollPhysics()),
                            children: [
                              ListTile(
                                leading: const Text("Заданный шаг"),
                                dense: true,
                                contentPadding: EdgeInsets.zero,
                                title: BlocBuilder<CalculationBloc,
                                    CalculationState>(
                                  builder: (context, state) => state.when(
                                    initial: () => const Text("Не задан"),
                                    processing: (error, hardness) =>
                                        const Text("Производятся вычисления"),
                                    done: (
                                      values,
                                      initialStep,
                                      resolvedStep,
                                      hardness,
                                      error,
                                    ) =>
                                        Text("$initialStep"),
                                  ),
                                ),
                              ),
                              ListTile(
                                leading: const Text("Выбранный шаг"),
                                dense: true,
                                contentPadding: EdgeInsets.zero,
                                title: BlocBuilder<CalculationBloc,
                                    CalculationState>(
                                  builder: (context, state) => state.when(
                                    initial: () => const Text("Не задан"),
                                    processing: (error, hardness) =>
                                        const Text("Производятся вычисления"),
                                    done: (
                                      values,
                                      initialStep,
                                      resolvedStep,
                                      hardness,
                                      error,
                                    ) =>
                                        Text("$resolvedStep"),
                                  ),
                                ),
                              ),
                              ListTile(
                                leading: const Text("Значение X4"),
                                dense: true,
                                contentPadding: EdgeInsets.zero,
                                title: BlocBuilder<CalculationBloc,
                                    CalculationState>(
                                  builder: (context, state) => state.when(
                                    initial: () => const Text("Неизвестно"),
                                    processing: (error, hardness) =>
                                        const Text("Производятся вычисления"),
                                    done: (
                                      values,
                                      initialStep,
                                      resolvedStep,
                                      hardness,
                                      error,
                                    ) =>
                                        Text(values.last.x4.toStringAsFixed(6)),
                                  ),
                                ),
                              ),
                              ListTile(
                                leading: const Text("Погрешность"),
                                dense: true,
                                contentPadding: EdgeInsets.zero,
                                title: BlocBuilder<CalculationBloc,
                                    CalculationState>(
                                  builder: (context, state) => state.when(
                                    initial: () => const Text("Неизвестно"),
                                    processing: (error, hardness) =>
                                        const Text("Производятся вычисления"),
                                    done: (
                                      values,
                                      initialStep,
                                      resolvedStep,
                                      hardness,
                                      error,
                                    ) =>
                                        Text(error.last.error
                                            .toStringAsFixed(6)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Flexible(
                  flex: 2,
                  child: BlocBuilder<CalculationBloc, CalculationState>(
                    builder: (context, state) {
                      return state.when(
                        initial: () {
                          return const Center(
                            child: Text(
                              "Данных о точности вычислений нет",
                            ),
                          );
                        },
                        processing: (hardness, error) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                        done: (
                          values,
                          initialStep,
                          resolvedStep,
                          hardness,
                          error,
                        ) {
                          return VariableChart<StepHardness>(
                            title: "График сложности вычислений",
                            xSelector: (values, _) => values.step.toString(),
                            ySelector: (values, _) =>
                                values.hardness.toDouble(),
                            data: hardness,
                            xAxisName: 'Величина шага',
                            yAxisName: 'Сложность',
                          );
                        },
                      );
                    },
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: BlocBuilder<CalculationBloc, CalculationState>(
                    builder: (context, state) {
                      return state.when(
                        initial: () {
                          return const Center(
                            child: Text(
                              "Данных о точности вычислений нет",
                            ),
                          );
                        },
                        processing: (hardness, error) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                        done: (values, initialStep, resolvedStep, hardness,
                            error) {
                          return VariableChart<StepError>(
                            title: "График точности вычислений",
                            xSelector: (values, _) => values.step.toString(),
                            ySelector: (values, _) => values.error.toDouble(),
                            data: error,
                            xAxisName: 'Величина шага',
                            yAxisName: 'Величина ошибки',
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StepInputForm extends StatefulWidget {
  final Function(String) onSubmit;
  const StepInputForm({Key? key, required this.onSubmit}) : super(key: key);

  @override
  State<StepInputForm> createState() => _StepInputFormState();
}

class _StepInputFormState extends State<StepInputForm> {
  final TextEditingController _editingController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _calculationAllowed = false;

  @override
  void initState() {
    _calculationAllowed = _formKey.currentState?.validate() ?? false;
    super.initState();
  }

  void handleInput(String? value) {
    if (kDebugMode) {
      print(value);
    }
    setState(() {
      _calculationAllowed = _formKey.currentState?.validate() ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Введите корректное значение";
              }
              final step = double.tryParse(value);
              if (step == null) {
                return "Допустимы только численные значения";
              }
              if (step <= 0 || step > calculationRange[1]) {
                return "Допустимые значения ${calculationRange[0]}..${calculationRange[1]}";
              }
              return null;
            },
            keyboardType: const TextInputType.numberWithOptions(
              signed: false,
              decimal: true,
            ),
            decoration: const InputDecoration(
              helperText: "Введите значение шага",
            ),
            controller: _editingController,
            onChanged: handleInput,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: _calculationAllowed
                ? () => widget.onSubmit(_editingController.text)
                : null,
            child: const Text("Рассчитать"),
          ),
        ],
      ),
    );
  }
}

/* -------------------------------------------------------------------------- */
/*                                Chart widget                                */
/* -------------------------------------------------------------------------- */
class VariableChart<T> extends StatelessWidget {
  final String? title;
  final double Function(T, int) ySelector;
  final String Function(T, int) xSelector;
  final String xAxisName;
  final String yAxisName;
  final List<T> data;

  const VariableChart({
    Key? key,
    required this.ySelector,
    required this.xSelector,
    required this.data,
    required this.xAxisName,
    required this.yAxisName,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: const Color.fromRGBO(80, 80, 80, .2),
      child: SfCartesianChart(
        title: title == null ? null : ChartTitle(text: title!),
        primaryXAxis: CategoryAxis(),
        // Enable legend
        legend: Legend(isVisible: false),
        // Enable tooltip
        tooltipBehavior: TooltipBehavior(enable: true),
        series: <LineSeries<T, String>>[
          LineSeries<T, String>(
            enableTooltip: true,
            legendItemText: title,
            markerSettings: const MarkerSettings(
              isVisible: true,
              width: 3,
              height: 3,
              borderWidth: 1,
            ),
            dataSource: data,
            xValueMapper: xSelector,
            yValueMapper: ySelector,
            xAxisName: xAxisName,
            // Enable data label
            dataLabelSettings: const DataLabelSettings(isVisible: false),
          )
        ],
      ),
    );
  }
}
