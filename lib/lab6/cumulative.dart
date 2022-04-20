import 'package:modeling/lab3/generator.dart';

class CumulativeFrequency {
  late double step;
  late double left;
  final List<double> average = [];
  final List<double> frequency = [];

  CumulativeFrequency(Histogram histogram) {
    double cumulative = 0;
    step = histogram.step;
    left = histogram.bounds[0].left;
    for (var item in histogram.bounds) {
      frequency.add(cumulative);
      average.add(item.average);
      cumulative += item.frequency;
    }
  }

  double compare(CumulativeFrequency other) {
    double max = double.negativeInfinity;
    late double _delta;
    for (var i = 0; i < frequency.length; i++) {
      _delta = (frequency[i] - other.frequency[i]).abs();
      if (max < _delta) {
        max = _delta;
      }
    }
    return max;
  }
}
