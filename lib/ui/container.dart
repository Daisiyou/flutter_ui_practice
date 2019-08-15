import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: Container(
        
        transform: Matrix4.skewX(0.2),
        
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset.zero,
              blurRadius: 10,
              spreadRadius: 5,
              color: Colors.green,
            ),
          ],

          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
//          gradient: LinearGradient(
//            colors: [Colors.red, Colors.yellow],
//            begin: Alignment.topLeft,
//            end: Alignment.bottomRight,
//          ),
          gradient: RadialGradient(
            colors: [Colors.red, Colors.blue, Colors.yellow],
            center: Alignment.center,
          ),
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
//          color: Colors.red,
        ),
        alignment: Alignment.center,
        constraints: BoxConstraints(
          maxWidth: 200,
          maxHeight: 200,
        ),
        margin: EdgeInsets.all(20.0),
//        color: Colors.red,
        child: Text('Hello world'),
      ),
    );
  }
}
