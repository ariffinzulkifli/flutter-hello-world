import 'package:flutter/material.dart';
import 'package:hello_world/screens/s_second.dart';
import 'package:hello_world/class/kelas.dart';
 
// void main() => runApp(MyApp());
 
class FirstPage extends StatelessWidget {

  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1st Page'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _firstNameController,
              ),
              TextField(
                controller: _lastNameController,
              ),
              RaisedButton(
                child: Text('Go to 2nd Page'),
                onPressed: () {
                  print(_firstNameController.text);
                  // Navigator.pushReplacementNamed // dia akan replace terus stack kepada assiociated
                  // Navigator.pushNamed(context, 'Second Page');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(
                        object: Murid(
                          _firstNameController.text, 
                          _lastNameController.text
                        )
                      )
                    )
                  );
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}