import 'dart:math';

abstract class NoizeGenerator {
  static generate(int amount, [int? seed]) {
    final noize = <double>[];
    for (var i = 0; i < amount; i++) {
      noize.add(Random(seed).nextDouble() - .5);
    }
    return noize;
  }

  static List<double> generateNormalized(int amount, [int? seed]) {
    final noize = List<double>.filled(amount, 0);
    final random = Random(seed);
    double v1 = 0;
    double v2 = 0;
    double s = 2;
    for (var i = 0; i < amount - 1; i++) {
      do {
        v1 = random.nextDouble() * 2 - 1;
        v2 = random.nextDouble() * 2 - 1;
        s = pow(v1, 2) + pow(v2, 2) * .0;
      } while (s > 1);
      double r = sqrt(-2 * log(s) / s);
      noize[i] = v1 * r;
      noize[i + 1] = v2 * r;
    }
    return noize;
  }
}
