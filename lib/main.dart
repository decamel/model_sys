import 'package:flutter/material.dart';
import 'package:modeling/lab1/first_lab.dart';
import 'package:modeling/lab2/second_lab.dart';
import 'package:modeling/lab3/third_lab.dart';
import 'package:modeling/lab4/fourth_lab.dart';
import 'package:modeling/lab5/fith_lab.dart';
import 'package:modeling/lab6/sixth_lab.dart';
import 'package:modeling/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Моделирование систем',
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const MyHomePage(
          title: 'Лабораторный практикум по дисциплине "Моделирование систем"'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const FirstLab();
                    },
                  ),
                );
              },
              child: const Text("Лабораторная работа №1"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const SecondLab();
                    },
                  ),
                );
              },
              child: const Text("Лабораторная работа №2"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const ThirdLab();
                    },
                  ),
                );
              },
              child: const Text("Лабораторная работа №3"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const FourthLab();
                    },
                  ),
                );
              },
              child: const Text("Лабораторная работа №4"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const FithLab();
                    },
                  ),
                );
              },
              child: const Text("Лабораторная работа №5"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const SixthLab();
                    },
                  ),
                );
              },
              child: const Text("Лабораторная работа №6"),
            ),
          ],
        ),
      ),
    );
  }
}
