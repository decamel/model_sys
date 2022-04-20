import 'dart:math';

double lambda(double delta, int power, int steps) {
  return delta * sqrt((power * steps) / (power + steps));
}
