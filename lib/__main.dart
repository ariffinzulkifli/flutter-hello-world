// Contoh Code dengan Reuse Builder Concept

import 'package:flutter/material.dart';
import 'package:hello_world/widgets/w_2ndwidget.dart';
import 'package:hello_world/widgets/w_3rdwidget.dart';
import 'package:hello_world/widgets/w_4thwidget.dart';
import 'package:hello_world/widgets/w_home.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Reuse Widget App'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              // Text(
              //   'Today,  I Learn',
              //   style: TextStyle(
              //     fontWeight: FontWeight.bold,
              //     fontSize: 30,
              //   ),
              // ),
              // Image.network('https://flutter.dev/assets/flutter-lockup-1caf6476beed76adec3c477586da54de6b552b2f42108ec5bc68dc63bae2df75.png'),
              // Image.asset('images/Profile-Photo-MAZ.jpg'),
              SizedBox(
                height: 10
              ),
              HomeWidget(),
              SizedBox(
                height: 10
              ),
              SecondWidget(),
              SizedBox(
                height: 10
              ),
              ThirdWidget(),
              SizedBox(
                height: 10
              ),
              FourthWidget(),
            ],
            // child: Image.asset('images/Profile-Photo-MAZ.jpg'),
            // child: Image.network('https://flutter.dev/assets/flutter-lockup-1caf6476beed76adec3c477586da54de6b552b2f42108ec5bc68dc63bae2df75.png'),
          ),
        ),
      ),
    );
  }
}