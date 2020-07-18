import 'package:flutter/material.dart';
import 'package:hello_world/class/kelas.dart';
 
// void main() => runApp(MyApp());
 
class SecondPage extends StatefulWidget {

  Murid object;

  SecondPage({Key key, this.object}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2nd Page'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text('Nama Pelajar: '),
                  Text(widget.object.firstName),
                  Text(widget.object.lastName),
                ],
              ),
              RaisedButton(
                child: Text('Go to 3rd Page'),
                onPressed: () {
                  Navigator.pushNamed(context, 'Third Page');
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}