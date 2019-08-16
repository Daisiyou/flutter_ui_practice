import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class Mytext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
      ),
      body: ListView(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 20)),
          Text(
            '123',
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'alsdjflsajflajflasdjflaksdfjlskjflasjflsaf' +
                'asdfsafsfssdfsdfsfdsfsdfasdfsfsfsafasf' +
                'asfdasfasfdfsdfsdfasfdsfsfczxcafdasasf' +
                'sdfasdfsdfsasdffs',
            textAlign: TextAlign.left,
            textScaleFactor: 1.4,
            maxLines: 2,
//            softWrap: false,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'next text is Text.rich',
            textScaleFactor: 2.0,
            textAlign: TextAlign.center,
          ),
          Padding(padding: EdgeInsets.only(bottom: 40)),
          Text.rich(TextSpan(
            children: [
              TextSpan(
                text: '￥',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xFFFF7528),
                ),
              ),
              TextSpan(
                text: '1000',
                style: TextStyle(
                  fontSize: 40.0,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFF7528),
                ),
                recognizer: TapGestureRecognizer()
                ..onTap = (){
                  print('tap ...');
                  Navigator.pop(context);
                },
              ),
            ],
          )),
        ],
      ),
    );
  }
}
