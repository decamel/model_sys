import 'dart:math';

const possibleSequencePowerValues = [50, 100, 1000, 10000];
const List<int> range = [1, 3];

const List<double> xiTable = [
  2.7,
  4.6,
  6.3,
  7.8,
  9.2,
  10.6,
  12.0,
  13.4,
  14.7,
  16.0,
  17.3,
  18.5,
  19.8,
  21.1,
  22.3,
  23.5,
  24.8,
  26.0,
  27.2,
  28.4,
  29.6,
  30.8,
  32.0,
  33.2,
  34.4,
  35.6,
  36.7,
  37.9,
  39.1,
  40.3,
];

typedef GeneratorSpreadF = double Function(double);

class Bounds {
  final double left;
  final double right;
  final double average;
  final int _supervisionCount;
  late double _frequency;

  Bounds(this.left, this.right, List<double> sequence)
      : average = (right + left) / 2,
        _supervisionCount = getMatches(
          sequence,
          left,
          right,
        ) {
    _frequency = _supervisionCount / sequence.length;
  }
  double get frequency => _frequency;
  int get supervisionCount => _supervisionCount;

  // Возвращает количество элементов,
  // попавших в границы
  static int getMatches(
    List<double> sequence,
    double leftBorder,
    double rightBorder,
  ) {
    int count = 0;
    for (var item in sequence) {
      if (leftBorder <= item && item < rightBorder) {
        count++;
      }
    }
    return count;
  }
}

class Marks {}

class Histogram {
  List<Bounds> bounds;

  double expectation;
  double dispersion;

  double step;
  int slicesCount;

  double xi;
  int freedom;
  double dXi;

  Histogram._(
    this.bounds, {
    required this.step,
    required this.expectation,
    required this.dispersion,
    required this.slicesCount,
    required this.xi,
    required this.freedom,
    required this.dXi,
  });

  factory Histogram.from(Selection selection) {
    final bounds = <Bounds>[];

    double expectation = 0;
    double dispersion = 0;
    double xi = 0;

    final int slicesCount =
        selection.power <= 500 ? (selection.power / 15).round() : 25;

    final inc = selection.size / slicesCount;

    double border = range[0].toDouble();

    for (var i = 0; i < slicesCount; i++) {
      bounds.add(Bounds(border, () {
        border += inc;
        return border;
      }(), selection.sequence));
    }
    for (var slice in bounds) {
      expectation += slice.average * slice.frequency;
    }
    double freq = 0;
    for (var slice in bounds) {
      dispersion += slice.frequency * pow(slice.average - expectation, 2);
      freq = (2 * slice.right - 2) / (slice.right + 1) -
          (2 * slice.left - 2) / (slice.left + 1);
      if (freq > slice.frequency) {
        xi += pow(freq - slice.frequency, 2) / freq;
      } else {
        xi += pow(slice.frequency - freq, 2) / freq;
      }
    }

    xi *= selection.power;
    final freedom = slicesCount - 1;
    return Histogram._(
      bounds,
      step: 1 / slicesCount,
      expectation: expectation,
      dispersion: dispersion,
      slicesCount: slicesCount,
      xi: xi,
      freedom: freedom,
      dXi: xiTable[freedom],
    );
  }
}

class Selection {
  final List<double> _sequence;
  double _min;
  double _max;

  double? _expectation;
  double? _dispersion;
  double? _average;

  Selection(
    this._sequence, {
    double? min,
    double? max,
    double? dispersion,
    double? average,
    double? frequency,
    double? expectation,
  })  : _min = min ?? double.infinity,
        _max = max ?? double.negativeInfinity,
        _average = average,
        _dispersion = dispersion,
        _expectation = expectation,
        assert(_sequence.isNotEmpty);

  // Объем выборки
  int get power => _sequence.length;

  List<double> get sequence => _sequence;

  /// Размах
  double get size => max - min;

  /// Среднее арифметическое
  double get average {
    if (_average != null) {
      return _average!;
    }

    double average = 0;
    for (var item in _sequence) {
      average += item;
    }

    _average = average / power;

    return _average!;
  }

  /// Мат. ожидание
  double get expectation {
    if (_expectation != null) {
      return _expectation!;
    }
    double expectation = 0;
    for (var item in _sequence) {
      expectation += item;
    }
    _expectation = expectation / power;
    return _expectation!;
  }

  /// Дисперсия выборки
  double get dispersion {
    if (_dispersion != null) {
      return _dispersion!;
    }
    double dispersion = 0;
    for (var item in _sequence) {
      dispersion += pow(expectation - item, 2);
    }
    _dispersion = dispersion / _sequence.length;
    return _dispersion!;
  }

  /// Минимальный элемент выборки
  double get min {
    if (_min != double.infinity) {
      return _min;
    }
    _minax();
    return _min;
  }

  /// Максимальный элемент выборки
  double get max {
    if (_max != double.negativeInfinity) {
      return _max;
    }
    _minax();
    return _max;
  }

  _minax() {
    for (var item in _sequence) {
      if (_min > item) {
        _min = item;
      }
      if (_max < item) {
        _max = item;
      }
    }
  }
}

class Generator {
  int _sequencePower = 50;

  setSequencePower(int p) {
    _sequencePower = p;
  }

  Selection generate(GeneratorSpreadF spreadF, [int? seed]) {
    final random = Random(seed ?? DateTime.now().millisecond);
    final List<double> _sequence = [];
    double min = double.infinity;
    double max = double.negativeInfinity;
    for (var i = 0, x, fx; i < _sequencePower; i++) {
      x = random.nextDouble();
      fx = spreadF(x);
      if (fx < min) {
        min = fx;
      }
      if (fx > max) {
        max = fx;
      }
      _sequence.add(fx);
    }

    return Selection(_sequence, min: min, max: max);
  }
}
