import 'dart:math';

import 'package:modeling/lab1/constants.dart';

class StepError {
  final double error;
  final double step;

  StepError(this.error, this.step);
}

class StepHardness {
  final int hardness;
  final double step;

  StepHardness(this.hardness, this.step);
}

class StepValuesCompose {
  final List<StepValues> _data = [];
  int _hardness = 0;

  void add(StepValues values) {
    _data.add(values);
  }

  void make(StepValues initial, double step) {
    double t = calculationRange[0];
    final end = calculationRange[1];
    _data.add(StepValues.next(initial, t, step));
    _hardness++;
    t += step;
    bool hit = false;
    while (t <= end) {
      add(StepValues.next(_data[_data.length - 1], t, step));
      _hardness++;
      t += step;
      if (t > end && !hit) {
        hit = true;
        t = end;
      }
    }
  }

  int get hardness => _hardness;
  List<StepValues> get data => _data;
  StepValues get last => _data.last;
}

class StepValues {
  final double stepMoment;
  final double x1;
  final double x2;
  final double x3;
  final double x4;
  final double x5;

  StepValues({
    required this.stepMoment,
    required this.x1,
    required this.x2,
    required this.x3,
    required this.x4,
    required this.x5,
  });

  factory StepValues.initial() {
    return StepValues(stepMoment: 0, x1: 1000, x2: 1, x3: 0, x4: 0, x5: 1);
  }

  factory StepValues.next(StepValues previous, double t, double h) {
    final control = m - u * t;
    final x1 = _x1Calculation(previous, h, control: control);
    final x2 = _x2Calculation(previous, h, control: control);
    final x3 = _x3Calculation(previous, h, control: control);
    final x4 = _x4Calculation(previous, h);
    final x5 = _x5Calculation(previous, h);
    return StepValues(stepMoment: t, x1: x1, x2: x2, x3: x3, x4: x4, x5: x5);
  }

  static double _x1Calculation(
    StepValues previous,
    double h, {
    required double control,
  }) {
    final result =
        -g * sin(previous.x2) + (p - a * cx * pow(previous.x1, 2)) / control;

    return previous.x1 + result * h;
  }

  static double _x2Calculation(
    StepValues previous,
    double h, {
    required double control,
  }) {
    final s1 = p * sin(previous.x5 - previous.x2);
    final s2 = a * cy * pow(previous.x1, 2);
    final controlled = (s1 + s2) / control;
    final nominator = controlled - g;
    final result = nominator / previous.x1;

    return previous.x2 + result * h;
  }

  static double _x3Calculation(
    StepValues previous,
    double h, {
    required double control,
  }) {
    final s1 = m1 * a * (previous.x2 - previous.x5) * pow(previous.x1, 2);
    final s2 = m2 * a * pow(previous.x1, 2) * previous.x3;
    final nominator = s1 - s2;
    final result = nominator / control;

    return previous.x3 + result * h;
  }

  static double _x4Calculation(
    StepValues previous,
    double h,
  ) {
    final result = previous.x1 * sin(previous.x2);

    return previous.x4 + result * h;
  }

  static double _x5Calculation(
    StepValues previous,
    double h,
  ) {
    final result = previous.x3;
    return previous.x5 + result * h;
  }
}
