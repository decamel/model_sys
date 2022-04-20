import 'dart:math';

double timegen(double x) {
  return -1 / x * log(1 - Random().nextDouble());
}
