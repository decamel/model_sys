import 'dart:math';

double timegen(double x) {
  return -1 / x * log(1 - Random().nextDouble());
}

double timegen_tau(double x, int k) {
  double delta;
  delta = -1 / (k * x) * log(1 - Random().nextDouble());
  return delta;
}
