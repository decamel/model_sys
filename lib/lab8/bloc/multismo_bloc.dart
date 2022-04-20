import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:modeling/lab7/compose_props.dart';
import 'package:modeling/lab7/constants.dart';
import 'package:modeling/lab7/func.dart';

part 'multismo_event.dart';
part 'multismo_state.dart';
part 'multismo_bloc.freezed.dart';

class MultismoBloc extends Bloc<MultismoEvent, MultismoState> {
  MultismoBloc() : super(_Initial()) {
    on<_Started>(_run);
  }

  Future _run(_Started event, Emitter<MultismoState> emit) async {
    double timer = 0, M = 0, dt = 0, dtau = 0, p, epsilon, claim;
    int claim_exp, nN, N = 0, k = 0, r = 0;
    do {
      dt = timegen(lambda.toDouble());
      if (k == 0) {
        N++;
        M++;
        k++;
        timer += dt;
      }
      if (k > 0) {
        dtau = timegen_tau(mu, k);
      }
      if (dt < dtau) {
        N++;
        timer += dt;
        if (k < n) {
          M++;
          k++;
        }
        if (k == n && r < m) {
          M++;
          r++;
        }
      }
      if (dt > dtau) {
        timer += dtau;
        if (r == 0) {
          k--;
        }
        if (r > 0) {
          r--;
        }
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
      dt = timegen(lambda.toDouble());
      if (k == 0) {
        N++;
        M++;
        k++;
        timer += dt;
      }
      if (k > 0) {
        dtau = timegen_tau(mu, k);
      }
      if (dt < dtau) {
        N++;
        timer += dt;
        if (k < n) {
          M++;
          k++;
        }
        if (k == N && r < M) {
          M++;
          r++;
        }
      }
      if (dt > dtau) {
        timer += dtau;
        if (r == 0) {
          k--;
        }
        if (r > 0) {
          r--;
        }
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

    emit(MultismoState.done(def: def, accure: accure));
  }
}
