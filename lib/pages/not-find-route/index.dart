import 'package:flutter/material.dart';

class NotFindRoute extends StatelessWidget {
  const NotFindRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('404页面'),
      ),
      body: Column(
        children: [ElevatedButton(onPressed: () {}, child: Text('返回'))],
      ),
    );
  }
}
