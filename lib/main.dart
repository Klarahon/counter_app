// ignore_for_file: camel_case_types

import 'package:counter_app/home_page.dart';
//import 'package:counter_app/third_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _counterAppState();
}

class _counterAppState extends State<CounterApp> {
  // int san = 1;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
