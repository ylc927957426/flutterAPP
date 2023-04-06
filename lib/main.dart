import 'package:flutter/material.dart';
import 'home/index.dart';
import './goods/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      routes: {
        "/": (context) => const MyHomePage(),
        "/goods": (context) => const Goods()
      },
    );
  }
}
