import 'dart:math';

const D = 4;
const alpha = 0.2;
const h = 0.05;
const itemsCount = 1e+4;
final range = [0, 3 / alpha];

const S0 = h / 12;

const WTf = 1 / alpha;
final Wkf = sqrt(2 * D / (alpha * S0));

double filterF(double x, double noise) {
  return (-(1 / WTf) * x + (Wkf / WTf) * noise) * h;
}

double corelationF(double dispersion, double x) {
  return dispersion * exp(-alpha * x * h);
}
