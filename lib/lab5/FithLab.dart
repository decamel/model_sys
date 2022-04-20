import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modeling/lab4/controls.dart';
import 'package:modeling/lab5/bloc/eluvate_bloc.dart';
import 'package:modeling/lab5/stage.dart';

class FithLab extends StatelessWidget {
  const FithLab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Лабораторная работа №5"),
      ),
      body: SafeArea(
        child: MultiBlocProvider(
          providers: [BlocProvider(create: (_) => EluvateBloc())],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BlocBuilder<EluvateBloc, EluvateState>(
                builder: (context, state) {
                  return CountingControls(
                    onStart: () {
                      BlocProvider.of<EluvateBloc>(context).add(
                        const EluvateEvent.generate(),
                      );
                    },
                  );
                },
              ),
              BlocBuilder<EluvateBloc, EluvateState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const Expanded(
                      child: Center(
                        child: Text("Запустите расчеты"),
                      ),
                    ),
                    loading: () => const Expanded(
                        child: Center(child: CircularProgressIndicator())),
                    generated: (
                      init,
                      normalized,
                      filtered,
                      nonline,
                      target,
                      step,
                    ) {
                      return Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: Stage(
                                        caption:
                                            "Стандартизованный нормальный закон",
                                        stats: normalized,
                                      ),
                                    ),
                                    Flexible(
                                      child: Stage(
                                        caption: "Формирующий фильтр",
                                        stats: filtered,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Flexible(
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: Stage(
                                        caption: "Нелинейное преобразование",
                                        stats: nonline,
                                      ),
                                    ),
                                    Flexible(
                                      child: Stage(
                                        caption: "Заданный закон распределения",
                                        stats: target,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
