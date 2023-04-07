import 'package:flutter/material.dart';
import 'package:flutter_text/pages/home/index.dart';

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
      home: const MyHomePage(),
      // routes: {
      //   "/": (context) => const MyHomePage(),
      //   "/goods": (context) => const Goods(),
      //   "/photo": (context) => const Photo()
      // },
    );
  }
}
