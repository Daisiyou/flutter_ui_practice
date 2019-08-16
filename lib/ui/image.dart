import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
      ),
      body: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 40)),
          Text(
            'Image demo',
            textScaleFactor: 2.0,
            textAlign: TextAlign.center,
          ),
          Image.asset(
            'lib/images/loading.png',
            repeat: ImageRepeat.repeat,
//            width: 300,
            height: 150,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.red,
            width: 300,
            height: 200,
            child: Image.asset('lib/images/loading.png'),
          ),
          SizedBox(
            height: 20,
          ),
          Image.network(
            'http://pic1.win4000.com/wallpaper/2017-10-25/59f083092ed4f.jpg',
            height: 150,
            width: 150,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
