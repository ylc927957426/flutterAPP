import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyForm> {
  bool _switchBol = false;
  bool _checkboxBol = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单'),
      ),
      body: Column(
        children: [
          Switch(
              value: _switchBol,
              onChanged: (value) {
                print('switch$value');
                setState(() {
                  _switchBol = value;
                });
              }),
          Checkbox(
              value: _checkboxBol,
              activeColor: Colors.deepOrange,
              onChanged: (value) {
                print('Checkbox$value');
                setState(() {
                  _checkboxBol = value!;
                });
              })
        ],
      ),
    );
  }
}
