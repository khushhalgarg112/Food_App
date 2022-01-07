import 'package:flutter/material.dart';
import 'package:food_rich/Fooderlich_theme.dart';
import 'package:food_rich/home.dart';

void main() {
  runApp(Fooderlich());
}


class Fooderlich extends StatelessWidget {

  @override

  final theme = FooderlichTheme.dark();
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'Fooderlich',
      home: Home(),
    );
  }
}
