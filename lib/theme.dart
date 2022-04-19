import 'package:flutter/material.dart';

final theme = ThemeData(
  primarySwatch: Colors.indigo,
  fontFamily: 'Raleway',
  appBarTheme: const AppBarTheme(
    elevation: 0,
  ),
  listTileTheme: const ListTileThemeData(
    tileColor: Colors.white,
  ),
  cardTheme: const CardTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
    ),
    elevation: 0,
  ),
);
