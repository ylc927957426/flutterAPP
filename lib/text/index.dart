import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '欢迎来到app，字体对齐方式',
              textAlign: TextAlign.center,
            ),
            Text(
              "使用Text标签的*4 操作，最大一行，超出隐藏 " * 4,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const Text(
              '改变字体大小',
              textScaleFactor: 1.5,
            ),
            Text(
              '修改字体样式Style',
              style: TextStyle(
                  color: Colors.pink,
                  fontSize: 20,
                  fontFamily: "Courier",
                  background: Paint()..color = Colors.amber,
                  decorationStyle: TextDecorationStyle.wavy,
                  decoration: TextDecoration.underline),
            ),
            const Text.rich(TextSpan(children: [
              TextSpan(text: '百度链接：'),
              TextSpan(
                text: "http://www.baidu.com",
                style: TextStyle(color: Colors.blue),
              ),
            ])),
            ElevatedButton(
              child: const Text("点击跳转商品页面"),
              onPressed: () async {
                var result = await Navigator.pushNamed(context, '/goods',
                    arguments: {'goodsName': '商品name'});
                print(
                  '从商品页面返回带来的参数: $result',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
