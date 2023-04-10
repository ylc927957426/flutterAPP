import 'package:flutter/material.dart';

class Goods extends StatelessWidget {
  const Goods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                // Navigator.pop(context, {'id': '商品id'});
              },
              child: const Text('商品页面')),
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
                Navigator.pushNamed(context, '/phone',
                    arguments: {'id': '123456789'});
              },
              child: const Text('跳转到照片')),
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
    );
  }
}
