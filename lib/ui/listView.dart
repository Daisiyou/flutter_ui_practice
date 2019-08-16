import 'package:flutter/material.dart';

class StaticListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        physics: AlwaysScrollableScrollPhysics(),
        itemExtent: 100.0,
        children: <Widget>[
          Text(
            '1',
            style: TextStyle(color: Colors.red, backgroundColor: Colors.yellow),
          ),
          Text('2'),
          Text('3'),
          Text('4'),
          Container(
            child: Text('5'),
            color: Colors.red,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
