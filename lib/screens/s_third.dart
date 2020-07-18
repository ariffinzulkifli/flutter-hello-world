import 'package:flutter/material.dart';
 
// void main() => runApp(MyApp());
 
class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('3rd Page'),
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            child: Text('Go to First Page'),
            onPressed: () {
              // Navigator.pop(context, 'First Page');
              Navigator.pushNamedAndRemoveUntil(context, 'First Page', (route) => false);
            }
          ),
        ),
      ),
    );
  }
}