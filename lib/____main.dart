// Contoh Code Alert dan Snackbar

import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());

// Main Class
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Alert & Snackbar App'),
        ),
        body: Home(),
      ),
    );
  }
}

// Secondary Class
class Home extends StatelessWidget {
  // const Home({Key key}) : super(key: key);

  void buttonCancel(){
    print('Clicked Cancel Button');
  }

  void buttonOk(){
    print('Clicked OK Button');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('Show Alert'),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Contoh Alert'),
                    content: Text('Ini adalah contoh text'),
                    actions: <Widget>[
                      RaisedButton(
                        color: Colors.red,
                        child: 
                          Text(
                            'Cancel',
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                        onPressed: () {
                          buttonCancel();
                        }
                      ),
                      RaisedButton(
                        child: 
                          Text('OK'),
                        onPressed: () {
                          Navigator.pop(context);
                          buttonOk();
                        }
                      )
                    ],
                  );
                },
              );
            }
          ),

          RaisedButton(
            child: Text('Snackbar Alert'),
            onPressed: () {
              final mysnackbar = SnackBar(
                content: Text('My Snackbard')
              );
              Scaffold.of(context).showSnackBar(mysnackbar);
            }
          )
        ],
      ),
    );
  }
}