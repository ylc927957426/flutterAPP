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
                  child: const Text('返回首页')),
              TextButton(
                  onPressed: () {
                    print('这是文本按钮');
                  },
                  child: const Text(
                    '文本按钮',
                    style: TextStyle(color: Colors.amber),
                  )),
              OutlinedButton(
                  onPressed: () {
                    print('这是带边框的按钮');
                  },
                  child: const Text('这是带边框的按钮')),
              IconButton(
                  onPressed: () {
                    print('这是图标按钮');
                  },
                  icon: const Icon(Icons.add_circle)),
              Row(
                children: [
                  ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.horizontal_rule_rounded),
                      label: const Text('图标按钮1')),
                  OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.alternate_email_sharp),
                      label: const Text('图标按钮2')),
                  TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.face_retouching_natural_rounded),
                      label: const Text('图标按钮3'))
                ],
              )
            ],
          ),
        ));
  }
}
