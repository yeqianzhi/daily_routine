import 'package:flutter/material.dart';
import 'package:flutter_app/routes/MyHomePage.dart';
import 'package:flutter_app/routes/NewRoute.dart';
import 'package:flutter_app/common/Echo.dart';

void main() => runApp(new MyApp());

// 入口
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      // 注册路由表--命名路由传值
      initialRoute: "/",
      routes: {
        "/": (context) => MyHomePage(title: 'Flutter Demo Home Page'), // 注册首页路由
        "new_page": (context) => NewRoute(),
        "echo_page": (context) => Echo(),

      },
    );
  }
}





