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
        itemExtent: 40,
        children: <Widget>[
          Container(
            height: 100,
            child: RaisedButton(
              color: Colors.green,
              child: Text('Text'),
              onPressed: () {
                Navigator.pushNamed(context, Router.text);
              },
            ),
          ),
          Container(
            height: 100,
            child: RaisedButton(
              color: Colors.red,
              child: Text('Container'),
              onPressed: () {
                Navigator.pushNamed(context, Router.container);
              },
            ),
          ),
          Container(
            height: 100,
            child: RaisedButton(
              color: Colors.yellow,
              child: Text('Row'),
              onPressed: () {
                Navigator.pushNamed(context, Router.row);
              },
            ),
          ),
          Container(
            height: 100,
            child: RaisedButton(
              color: Colors.blue,
              child: Text('Column'),
              onPressed: (){
                Navigator.pushNamed(context, Router.column);
              },
            ),
          ),
          Container(
            height: 100,
            child: RaisedButton(
              color: Colors.red,
              child: Text('Stack'),
              onPressed: (){
                Navigator.pushNamed(context, Router.stack);
              },
            ),
          ),
          Container(
            height: 100,
            child: RaisedButton(
              color: Colors.yellow,
              child: Text('Image'),
              onPressed: (){
                Navigator.pushNamed(context, Router.image);
              },
            ),
          ),
          Container(
            height: 100,
            child: RaisedButton(
              color: Colors.green,
              child: Text('StaticListView'),
              onPressed: (){
                Navigator.pushNamed(context, Router.staticListView);
              },
            ),
          ),

          Container(
            height: 100,
            child: RaisedButton(
              color: Colors.yellow,
              child: Text('ListViews'),
              onPressed: (){
                Navigator.pushNamed(context, Router.listViews);
              },
            ),
          ),

          Container(
            height: 100,
            child: RaisedButton(
              color: Colors.red,
              child: Text('Demo1'),
              onPressed: (){
                Navigator.pushNamed(context, Router.demo1);
              },
            ),
          ),
          Container(
            height: 100,
            child: RaisedButton(
              color: Colors.green,
              child: Text('BottomNavigation'),
              onPressed: (){
                Navigator.pushNamed(context, Router.bottomNav);
              },
            ),
          ),
          Container(
            height: 100,
            child: RaisedButton(
              color: Colors.yellow,
              child: Text('AnimatedContainer'),
              onPressed: (){
                Navigator.pushNamed(context, Router.animatedCon);
              },
            ),
          ),
          Container(
            height: 100,
            child: RaisedButton(
              color: Colors.red,
              child: Text('AnimatedCross'),
              onPressed: (){
                Navigator.pushNamed(context, Router.animatedCross);
              },
            ),
          ),
          Container(
            height: 100,
            child: RaisedButton(
              color: Colors.green,
              child: Text('TextFieldDemo'),
              onPressed: (){
                Navigator.pushNamed(context, Router.textFieldDemo);
              },
            ),
          ),
        ],
      ),
    );
  }
}
