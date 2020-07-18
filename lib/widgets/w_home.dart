import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  // const HomeWidget({Key key}) : super(key: key); // jika nak pass value to parameter

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: 350,
                height: 100,
                color: Colors.blue,
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Text(
                  'My Home',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}