import 'package:flutter/material.dart';
import 'home/MyHomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // 我们的项目都需要写在 MaterialApp 的里面
    return MaterialApp(
      title: 'app',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      // 传入我们的自定义的 组件
      home: MyHomePage(),
    );
  }
}


