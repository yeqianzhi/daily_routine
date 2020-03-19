import 'package:flutter/material.dart';

/**
 *  实现了一个回显字符串的 Echo widget
 */


class Echo extends StatelessWidget {
  const Echo({
    Key key,
    @required this.text,
    this.backgroundColor: Colors.grey,
  }) : super(key: key);

  final String text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Echo(text: "Hello World!");
  }
}
