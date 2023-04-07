import 'package:flutter/material.dart';
import '../text/index.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List _tabs = [
    {
      'url': const MyText(),
      'label': '首页',
      'bottomLabel': '首页顶部',
      'icon': const Icon(Icons.home),
    },
  ];
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('首页'),
      ),
      body: _tabs[_current]['url'],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.green,
          iconSize: 30,
          backgroundColor: const Color.fromARGB(235, 231, 231, 231),
          onTap: (value) {
            setState(() {
              _current = value;
            });
          },
          currentIndex: _current,
          items: _tabs.map((item) {
            return BottomNavigationBarItem(
              icon: item['icon'],
              label: item['label'],
            );
          }).toList()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/photo');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
