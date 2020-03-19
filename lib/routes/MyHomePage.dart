import 'package:flutter/material.dart';

// 首页
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; // 用于记录按钮点击的总次数

  // 设置状态的自增函数
  void _incrementCounter() {
    /**
     * setState方法的作用是通知 Flutter框架，有状态发生了改变，
     * Flutter框架收到通知后，会执行 build方法来根据新的状态重新构建界面，
     * Flutter 对此方法做了优化，使重新执行变的很快，
     * 所以你可以重新构建任何需要更新的东西，而无需分别去修改各个 widget。
     */
    setState(() {
      _counter++;
    });
  }

  // 构建 UI界面
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    /**
     * Scaffold shi Material库中提供的页面脚手架
     * 提供默认的导航栏 appBar，标题 title，包含主屏幕 widget树 body
     * 路由默认都是通过 Scaffold 创建
     */

    // 命名路由--获取路由参数
    var args = ModalRoute.of(context).settings.arguments;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),

      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            // 路由--通过点击按钮跳转到另一个页面
            new FlatButton(
              child: Text("Open new route"),
              textColor: Colors.blue,
              onPressed: () {
                // 命名路由
                Navigator.pushNamed(context, "new_page", arguments: 'hi');
                // 导航到新路由
//                  Navigator.push(context,
//                  MaterialPageRoute(builder: (context){
//                    return NewRoute();
//                  },));
              },
            ),

            new FlatButton(
              child: Text("Open Echo Page"),
              textColor: Colors.deepPurple,
              onPressed: () {
                // 命名路由
                Navigator.pushNamed(context, "echo_page");
              },
            ),

            new Text('$args'),

          ],
        ),
      ),

      // 悬浮按钮
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}