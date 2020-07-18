import 'package:flutter/material.dart';

class ThirdWidget extends StatelessWidget {
  // const ThirdWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: 160,
            height: 100,
            color: Colors.red,
          ),
          Container(
            width: 160,
            height: 100,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}