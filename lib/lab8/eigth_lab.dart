import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modeling/lab8/bloc/multismo_bloc.dart';

class EightLab extends StatelessWidget {
  const EightLab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Лабораторная работа №8"),
      ),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: 850,
            child: MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => MultismoBloc(),
                ),
              ],
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Card(
                  elevation: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Wrap(
                          spacing: 30,
                          children: [
                            BlocBuilder<MultismoBloc, MultismoState>(
                              builder: (context, state) {
                                return ElevatedButton(
                                  onPressed: () {
                                    BlocProvider.of<MultismoBloc>(context).add(
                                      const MultismoEvent.run(),
                                    );
                                  },
                                  child: const Text("Запустить"),
                                );
                              },
                            ),
                            BlocBuilder<MultismoBloc, MultismoState>(
                                builder: (context, state) {
                              return state.maybeWhen(
                                done: (def, acc) =>
                                    Text("p = ${acc.p.toStringAsFixed(4)}"),
                                orElse: () => const Text(""),
                              );
                            }),
                            BlocBuilder<MultismoBloc, MultismoState>(
                                builder: (context, state) {
                              return state.maybeWhen(
                                done: (def, acc) => Text(
                                    "q = ${(1 - acc.p).toStringAsFixed(4)}"),
                                orElse: () => const Text(""),
                              );
                            }),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Expanded(
                          child: ListView(
                            children: [
                              ListTile(
                                leading: const Text(
                                  "Требуемое число опытов",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                minLeadingWidth: 300,
                                title: SizedBox(
                                  width: 300,
                                  child:
                                      BlocBuilder<MultismoBloc, MultismoState>(
                                          builder: (context, state) {
                                    return state.maybeMap(
                                      done: (value) {
                                        return Text(
                                            value.def.reqn!.toStringAsFixed(4));
                                      },
                                      orElse: () => const Text("Не известно"),
                                    );
                                  }),
                                ),
                              ),
                              ListTile(
                                leading: const Text(
                                  "Требуемое время наблюдения",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                minLeadingWidth: 300,
                                title: SizedBox(
                                  width: 300,
                                  child:
                                      BlocBuilder<MultismoBloc, MultismoState>(
                                          builder: (context, state) {
                                    return state.maybeMap(
                                      done: (value) {
                                        return Text(
                                            value.def.reqt!.toStringAsFixed(4));
                                      },
                                      orElse: () => const Text("Не известно"),
                                    );
                                  }),
                                ),
                              ),
                              const ListTile(
                                leading: SizedBox(),
                                minLeadingWidth: 300,
                                title: SizedBox(
                                  width: 300,
                                  child: Text(
                                    "100с",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                trailing: SizedBox(
                                  width: 300,
                                  child: Text(
                                    "Точно",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              ListTile(
                                leading: const Text(
                                  "Оценка вероятности отказа",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                minLeadingWidth: 300,
                                title: SizedBox(
                                  width: 300,
                                  child:
                                      BlocBuilder<MultismoBloc, MultismoState>(
                                          builder: (context, state) {
                                    return state.maybeMap(
                                      done: (value) {
                                        return Text((1 - value.def.p)
                                            .toStringAsFixed(6));
                                      },
                                      orElse: () => const Text("Не известно"),
                                    );
                                  }),
                                ),
                                trailing: SizedBox(
                                  width: 300,
                                  child:
                                      BlocBuilder<MultismoBloc, MultismoState>(
                                          builder: (context, state) {
                                    return state.maybeMap(
                                      done: (value) {
                                        return Text((1 - value.accure.p)
                                            .toStringAsFixed(6));
                                      },
                                      orElse: () => const Text("Не известно"),
                                    );
                                  }),
                                ),
                              ),
                              ListTile(
                                leading: const Text(
                                  "Точность",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                minLeadingWidth: 300,
                                title: SizedBox(
                                  width: 300,
                                  child:
                                      BlocBuilder<MultismoBloc, MultismoState>(
                                          builder: (context, state) {
                                    return state.maybeMap(
                                      done: (value) {
                                        return Text(value.def.epsilon
                                            .toStringAsFixed(4));
                                      },
                                      orElse: () => const Text("Не известно"),
                                    );
                                  }),
                                ),
                                trailing: SizedBox(
                                  width: 300,
                                  child:
                                      BlocBuilder<MultismoBloc, MultismoState>(
                                          builder: (context, state) {
                                    return state.maybeMap(
                                      done: (value) {
                                        return Text(value.accure.epsilon
                                            .toStringAsFixed(4));
                                      },
                                      orElse: () => const Text("Не известно"),
                                    );
                                  }),
                                ),
                              ),
                              ListTile(
                                leading: const Text(
                                  "Число поступивших заявок",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                minLeadingWidth: 300,
                                title: SizedBox(
                                  width: 300,
                                  child:
                                      BlocBuilder<MultismoBloc, MultismoState>(
                                          builder: (context, state) {
                                    return state.maybeMap(
                                      done: (value) {
                                        return Text(
                                            value.def.n.toStringAsFixed(4));
                                      },
                                      orElse: () => const Text("Не известно"),
                                    );
                                  }),
                                ),
                                trailing: SizedBox(
                                  width: 300,
                                  child:
                                      BlocBuilder<MultismoBloc, MultismoState>(
                                          builder: (context, state) {
                                    return state.maybeMap(
                                      done: (value) {
                                        return Text(
                                            value.accure.n.toStringAsFixed(4));
                                      },
                                      orElse: () => const Text("Не известно"),
                                    );
                                  }),
                                ),
                              ),
                              ListTile(
                                leading: const Text(
                                  "Число обслуженных заявок",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                minLeadingWidth: 300,
                                title: SizedBox(
                                  width: 300,
                                  child:
                                      BlocBuilder<MultismoBloc, MultismoState>(
                                          builder: (context, state) {
                                    return state.maybeMap(
                                      done: (value) {
                                        return Text(
                                            value.def.m.toStringAsFixed(4));
                                      },
                                      orElse: () => const Text("Не известно"),
                                    );
                                  }),
                                ),
                                trailing: SizedBox(
                                  width: 300,
                                  child:
                                      BlocBuilder<MultismoBloc, MultismoState>(
                                          builder: (context, state) {
                                    return state.maybeMap(
                                      done: (value) {
                                        return Text(
                                            value.accure.m.toStringAsFixed(4));
                                      },
                                      orElse: () => const Text("Не известно"),
                                    );
                                  }),
                                ),
                              ),
                              ListTile(
                                leading: const Text(
                                  "Текущее время наблюдения",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                minLeadingWidth: 300,
                                title: SizedBox(
                                  width: 300,
                                  child:
                                      BlocBuilder<MultismoBloc, MultismoState>(
                                          builder: (context, state) {
                                    return state.maybeMap(
                                      done: (value) {
                                        return Text(
                                            value.def.timer.toStringAsFixed(4));
                                      },
                                      orElse: () => const Text("Не известно"),
                                    );
                                  }),
                                ),
                                trailing: SizedBox(
                                  width: 300,
                                  child:
                                      BlocBuilder<MultismoBloc, MultismoState>(
                                          builder: (context, state) {
                                    return state.maybeMap(
                                      done: (value) {
                                        return Text(value.accure.timer
                                            .toStringAsFixed(4));
                                      },
                                      orElse: () => const Text("Не известно"),
                                    );
                                  }),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
