import 'package:flutter/material.dart';

class AnimatedCross extends StatefulWidget {
  @override
  _AnimatedCrossState createState() => _AnimatedCrossState();
}

class _AnimatedCrossState extends State<AnimatedCross> {
  bool _showFirst = true;
  TextStyle sty1 =
      TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20);
  TextStyle sty2 =
      TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 30);
  TextStyle sty = TextStyle();

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
      ),
      body: Column(
        children: <Widget>[
//          RawKeyboardListener(focusNode: null, onKey: null, child: null),
          Form(
            key: _formkey,
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter sometext';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: RaisedButton(
                  child: Text('Submit'),
                  onPressed: (){
                    if (_formkey.currentState.validate()){
                      print("validate");
                    }
                  },
                ),
              ),
            ],
          )),
          Padding(padding: EdgeInsets.only(top: 20)),
          Padding(
            padding: EdgeInsets.all(20),
            child: Placeholder(
              strokeWidth: 10,
              fallbackHeight: 100,
              fallbackWidth: 100,
              color: Colors.yellow,
            ),
          ),
          Center(
            child: AnimatedDefaultTextStyle(
              child: Text('AnimatedDefaultTextStyle'),
              style: sty,
              curve: Curves.easeOut,
              duration: Duration(milliseconds: 300),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          AnimatedCrossFade(
            firstChild: FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 100,
            ),
            secondChild: FlutterLogo(
              style: FlutterLogoStyle.stacked,
              size: 100,
            ),
            crossFadeState: _showFirst
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: Duration(milliseconds: 300),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.refresh,
          color: Colors.red,
        ),
        onPressed: () {
          setState(() {
            _showFirst = !_showFirst;
            _showFirst ? sty = sty1 : sty = sty2;
          });
        },
      ),
    );
  }
}
