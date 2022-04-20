import 'package:modeling/lab3/generator.dart';

class StatsJoin {
  final Histogram histogram;
  final Selection selection;
  final List<double> corelation;
  final List<double> theory;
  final double step;

  StatsJoin(
      this.histogram, this.selection, this.theory, this.corelation, this.step);
}
