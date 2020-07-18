import 'package:flutter/material.dart';

class FourthWidget extends StatelessWidget {
  // const FourthWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              width: 350,
              height: 100,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}