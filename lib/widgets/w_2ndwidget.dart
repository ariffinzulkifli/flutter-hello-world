import 'package:flutter/material.dart';

class SecondWidget extends StatelessWidget {
  // const name({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                color: Colors.cyan,
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                color: Colors.cyan,
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Icon(
                  Icons.map,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                color: Colors.cyan,
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Icon(
                  Icons.apps,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}