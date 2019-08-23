import 'package:flutter/material.dart';

/*
class AnimatedCon extends StatefulWidget {
  @override

  num height = 200.0;
  bool add = true;
  Color bgColor = Colors.red;

  _AnimatedConState createState() => _AnimatedConState();
}

class _AnimatedConState extends State<AnimatedCon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: widget.height,
        color: widget.bgColor,
        child: Center(
          child: Text('AnimatedContainer'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.track_changes),
        onPressed: () {
          setState(() {
            if (widget.height >= 300) {
              widget.add = false;
            }else if (widget.height <= 200) {
              widget.add = true;
            }

            if (widget.bgColor == Colors.red) {
              widget.bgColor = Colors.yellow;
            }else {
              widget.bgColor = Colors.red;
            }

            if (widget.add) {
              widget.height += 10.0;
            }else {
              widget.height -= 10.0;
            }
          });
          print("floatingActionButton");
        },
      ),
    );
  }
}
*/


class AnimatedCon extends StatefulWidget {
  @override

  num height = 200.0;
  bool add = true;
  Color bgColor = Colors.red;

  _AnimatedConState createState() => _AnimatedConState();
}

class _AnimatedConState extends State<AnimatedCon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: AnimatedContainer(
        margin: EdgeInsets.all(16),
        curve: Curves.easeOut,
        duration: Duration(milliseconds: 300),
        height: widget.height,
        color: widget.bgColor,
        child: Center(
          child: Text('AnimatedContainer'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () {
          setState(() {
            if (widget.height >= 300) {
              widget.add = false;
            }else if (widget.height <= 200) {
              widget.add = true;
            }

            if (widget.bgColor == Colors.red) {
              widget.bgColor = Colors.yellow;
            }else {
              widget.bgColor = Colors.red;
            }

            if (widget.add) {
              widget.height += 50.0;
            }else {
              widget.height -= 50.0;
            }
          });
          print("floatingActionButton");
        },
      ),
    );
  }
}



