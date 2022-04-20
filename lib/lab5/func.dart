import 'dart:math';

import 'package:modeling/lab4/constants.dart' as prev;

final sqrt2pi = sqrt(pi * 2);

const S0 = prev.h;

const wTf = 1 / prev.alpha;
final wkf = sqrt(2 / (prev.alpha * S0));

double reducedFilterF(double x, double noise) {
  return (-(1 / wTf) * x + (wkf / wTf) * noise) * prev.h;
}

double normalizedCorelationF(double dispersion, double x) {
  return 0;
}

double reducedCorelationF(double dispersion, double x) {
  return dispersion * exp(-prev.alpha * x * prev.h);
}

double lawNormalR(double left, double right, double average) {
  return (1 / (sqrt(2 * pi)) * exp(-pow(average, 2) / 2.0)) / 3.0;
}

double lawFilteredR(double left, double right, double average) {
  return (1 / (sqrt(2 * pi)) * exp(-pow(average, 2) / 2.0)) / 4.0;
}

double lawNonlineR(double left, double right, double average) {
  return .4;
}

double lawTargetR(double left, double right, double average) {
  return (2 * right - 2) / (right + 1) - (2 * left - 2) / (left + 1);
}

double nonlineTransformF(double x) {
  final val = (x / sqrt2pi) * integralRow(x) + .5;
  if (val > 1) {
    return 1;
  }
  if (val < 0) {
    return 0;
  }
  return val;
}

double integralRow(double x) {
  double count = 1;
  // ignore: prefer_function_declarations_over_variables
  final nominator = (double x, double grade) => pow(x, 2 * grade);
  // ignore: prefer_function_declarations_over_variables
  final denominator = (double grade) => pow(2, grade) * (2 * grade + 1);
  double step = 0;
  for (double i = 1; i < 7; i++) {
    step = (nominator(x, i) / denominator(i) * factorial(i));
    if ((i % 2) != 0) {
      count -= step;
    } else {
      count += step;
    }
  }
  return count;
}

double factorial(double x) {
  double value = 1;
  if (x == 0) {
    return 1;
  }
  for (double i = x; i > 0; i--) {
    value *= i;
  }

  return value;
}
