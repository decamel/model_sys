import 'package:charcode/charcode.dart';
import 'package:flutter/material.dart';
import 'package:modeling/lab4/constants.dart';

class CountingControls extends StatelessWidget {
  final VoidCallback onStart;
  const CountingControls({Key? key, required this.onStart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            ElevatedButton(
              onPressed: onStart,
              child: const Text("Сгенерировать"),
            ),
            for (var item in <Map<String, dynamic>>[
              {'value': D.toDouble(), 'name': "D"},
              {'value': alpha, 'name': $alpha},
              {'value': h, 'name': 'h'},
            ])
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  width: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        item['name'] is int
                            ? String.fromCharCode(item['name'])
                            : item['name'],
                      ),
                      const Text("="),
                      Text(
                        item['value'].toString(),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
