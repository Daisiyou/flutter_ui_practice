import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('column'),
      ),
      bottomNavigationBar: RaisedButton(
        child: Text('bottom button'),
        onPressed: null,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Text('001'),
          ),
          Container(
            child: Center(
              child: Text('000'),
            ),
          ),
          Text('AAA'),
          Text('BBB'),
          Text('CCC'),
          Text('DDD'),
        ],
      ),
    );
  }
}
