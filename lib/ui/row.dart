import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Row'),
      ),
      body: Row(
        mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            child: Text('0001'),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text('000'),
          ),
          Text(
            '123',
            style: TextStyle(
              color: Colors.red,
            ),
          ),
          Text(
            '456',
            style: TextStyle(color: Colors.black),
          ),
          Text(
            '789',
            style: TextStyle(color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
