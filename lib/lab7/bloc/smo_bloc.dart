import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:modeling/lab7/compose_props.dart';
import 'package:modeling/lab7/constants.dart';
import 'package:modeling/lab7/func.dart';

part 'smo_event.dart';
part 'smo_state.dart';
part 'smo_bloc.freezed.dart';

class SmoBloc extends Bloc<SmoEvent, SmoState> {
  SmoBloc() : super(_Initial()) {
    on<_Started>(_run);
  }

  Future _run(_Started event, Emitter<SmoState> emit) async {
    double timer = 0, M = 0, dt, dtau, p, epsilon, claim;
    int claim_exp, nN, N = 0;
    dt = timegen(lambda.toDouble());
    N++;
    M++;
    do {
      dt = timegen(lambda.toDouble());
      dtau = timegen(mu.toDouble());
      N++;
      timer += dt;
      if (dt >= dtau) {
        M++;
      }
    } while (timer < 100);
    p = M / N;
    epsilon = alpha * sqrt((p * (1 - p)) / N);
    claim_exp = (pow(alpha, 2) * p * (1 - p)) ~/ pow(Eps, 2);
    claim = claim_exp / lambda;
    nN = claim_exp;

    final def = ComposeProps(
      p: p,
      epsilon: epsilon,
      eps: Eps,
      timer: timer,
      m: M,
      n: N,
      reqn: claim_exp,
      reqt: claim,
    );

    do {
      dt = timegen(lambda);
      dtau = timegen(mu);
      N++;
      timer += dt;
      if (dt >= dtau) {
        M++;
      }
      epsilon = alpha * sqrt((p * (1 - p)) / N);
    } while ((timer < claim) || (epsilon > .01));
    p = M / N;
    claim_exp = (pow(alpha, 2) * p * (1 - p)) ~/ pow(Eps, 2);
    nN += claim_exp;

    final accure = ComposeProps(
      p: p,
      epsilon: epsilon,
      eps: Eps,
      timer: timer,
      m: M,
      n: N,
    );

    emit(SmoState.done(def: def, accure: accure));
  }
}
