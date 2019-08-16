import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Container(
        height: 500,
        color: Colors.yellow,
        child: Stack(
          children: <Widget>[
            Positioned(
                left: 20,
                top: 20,
                child: Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                )),
            Positioned(
              right: 20,
              bottom: 20,
              child: Container(
                color: Colors.blue,
                width: 50,
                height: 50,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: RaisedButton(
        padding: EdgeInsets.only(bottom: 50),
        child: Text('Back'),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}
