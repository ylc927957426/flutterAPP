import 'package:flutter/material.dart';
import '../components/List/index.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomList(),
        Text('这是第一段文字'),
        Text('这是第二段文字'),
      ],
    );
  }
}
