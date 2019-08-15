import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/router/router.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 100,
            color: Colors.red,
            child: RaisedButton(
              child: Text('Container'),
              onPressed: () {
                Navigator.pushNamed(context, Router.container);
              },
            ),
          ),
          Container(
            height: 100,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
