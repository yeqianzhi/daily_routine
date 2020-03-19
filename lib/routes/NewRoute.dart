import 'package:flutter/material.dart';

// 另一个页面
class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // 命名路由--获取路由参数
    var args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("New route"),
      ),
      body: Center(
          child: Column(
            children: <Widget>[
              new Text('$args'),
              new FlatButton(
                child: Text("打开首页"),
                textColor: Colors.blue,
                onPressed: (){
                  // 命名路由
                  Navigator.pushNamed(context, "/", arguments: 'hello');
                },
              ),

            ],
          ))
    );
  }
}
