import 'package:modeling/lab3/generator.dart';

typedef FilterW = double Function(double, double);
typedef CorelationF = double Function(double, double);

abstract class Filter {
  static Selection generate(FilterW W, List<double> noise) {
    final sequence = <double>[0];
    final length = noise.length;
    for (int i = 1; i < length; i++) {
      sequence.add(sequence.last + W(sequence.last, noise[i]));
    }
    return Selection(sequence);
  }

  static List<double> corelation(Selection selection, List<double> bounds) {
    final corelationR = <double>[];
    double corelationValue = 0;
    for (int j = bounds[0].toInt(); j < bounds[1].toInt(); j++) {
      corelationValue = 0;
      for (var i = 0; i < selection.power - j; i++) {
        corelationValue += (selection.sequence[i] - selection.expectation) *
            (selection.sequence[i + j] - selection.expectation);
      }
      corelationR.add(corelationValue / (selection.power + 1 - j));
    }
    return corelationR;
  }

  static List<double> theoryCorelation(
      double dispersion, CorelationF cf, List<double> bounds) {
    final corelation = <double>[];
    for (int j = bounds[0].toInt(); j < bounds[1].toInt(); j++) {
      corelation.add(cf(dispersion, j.toDouble()));
    }
    return corelation;
  }
}
