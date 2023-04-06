import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Goods extends StatelessWidget {
  const Goods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments;
    print('首页路由携带的参数 $args');

    return Scaffold(
        appBar: AppBar(
          title: const Text('商品'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, {'id': '商品id'});
                  },
                  child: const Text('返回首页'))
            ],
          ),
        ));
  }
}
