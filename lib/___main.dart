// Contoh Code Button

import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Button App'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: 
                  Text('Raised Button'),
                onPressed: () {
                  print('Clicked Raised Button');
                }
              ),
              OutlineButton(
                child: 
                  Text('Outline Button'),
                onPressed: () {
                  print('Clicked Outline Button');
                }
              ),
              FlatButton(
                child: 
                  Text('Flat Button'),
                onPressed: () {
                  print('Clicked Flat Button');
                }
              ),
              IconButton(
                icon: Icon(Icons.apps),
                onPressed: () {
                  print('Clicked Icon Button');
                }
              ),
              SizedBox(
                height: 50,
                child: RaisedButton.icon(
                  color: Colors.blue,
                  onPressed: () {
                    print('Clicked Raised Icon Button');
                  }, 
                  icon: Icon(Icons.ac_unit, color: Colors.white,), 
                  label: Text(
                    'Raised Icon Button',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              InkWell(
                child: Image.network('https://flutter.dev/assets/flutter-lockup-1caf6476beed76adec3c477586da54de6b552b2f42108ec5bc68dc63bae2df75.png',
                  width: 200,
                  height: 200
                ),
                onTap: () {
                  print ('Clicked Image Button');
                }
              ),
              InkWell(
                child: Container(
                  width: 200,
                  height: 40,
                  color: Colors.cyan,
                ),
                onTap: () {
                  print ('Clicked Container');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}