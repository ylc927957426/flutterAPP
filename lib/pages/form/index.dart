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
  TextEditingController _nameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  GlobalKey _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    _nameController.text = '这是用户名默认值';
    _passwordController.text = '这是密码默认值';
    return Scaffold(
        appBar: AppBar(
          title: Text('表单'),
        ),
        body: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                    labelText: '用户名',
                    hintText: '用户名或邮箱',
                    icon: Icon(Icons.person)),
                validator: (v) {
                  return v!.trim().isNotEmpty ? null : "用户名不能为空";
                },
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: '密码',
                    hintText: '您的登录密码',
                    icon: Icon(Icons.lock_clock)),
                validator: (v) {
                  return v!.trim().length > 5 ? null : "密码不能少于6位";
                },
              ),
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
                  }),
              ElevatedButton(
                  onPressed: () {
                    if ((_formKey.currentState as FormState).validate()) {
                      print('验证通过');
                      //验证通过提交数据
                    }
                  },
                  child: Text('登录'))
            ],
          ),
        ));
  }
}
