import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Photo extends StatelessWidget {
  const Photo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments;
    print('首页路由携带的参数 $args');

    return Scaffold(
      appBar: AppBar(title: const Text('照片')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('images/a_dot_burr.jpg'),
                height: 100,
                width: 35,
                alignment: Alignment.topRight,
                fit: BoxFit.fill,
              ),
              Image(
                image: NetworkImage(
                    "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
                height: 100,
              ),
              Icon(
                Icons.fingerprint,
                color: Colors.green,
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/form');
                  },
                  icon: Icon(Icons.g_mobiledata_outlined),
                  label: Text('去表单'))
            ],
          ),
        ],
      ),
    );
  }
}
