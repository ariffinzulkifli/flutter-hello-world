// Contoh Code dengan Awesome Flutter mateapp() dan Navigation

import 'package:flutter/material.dart';
import 'package:hello_world/screens/s_first.dart';
import 'package:hello_world/screens/s_second.dart';
import 'package:hello_world/screens/s_third.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: FirstPage(),
      routes: <String, WidgetBuilder> {
        'First Page': (BuildContext context) => FirstPage(),
        'Second Page': (BuildContext context) => SecondPage(),
        'Third Page': (BuildContext context) => ThirdPage()
      }
    );
  }
}