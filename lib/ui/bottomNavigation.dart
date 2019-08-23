import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _index = 0;

  List<Widget> views = [Home_demo(), Setting_demo(), Me_demo()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(leading: null,),
      body: views[_index],
      bottomNavigationBar: BottomNavigationBar(
//        selectedIconTheme: IconThemeData(color: Colors.red),
//        selectedLabelStyle: TextStyle(color: Colors.red),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.green,
        elevation: 20,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Setting'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mood),
            title: Text('Me'),
          ),
        ],
        currentIndex: _index,
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}

class Home_demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'), leading: Container(),),
      body: Container(
        child: Center(
          child: Text('Home'),
        ),
      ),
    );
  }
}

class Setting_demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Setting'),leading: null,),
      body: Container(
        child: Center(
          child: Text('Setting'),
        ),
      ),
    );
  }
}

class Me_demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Me'),leading: null,),
      body: Container(
        child: Center(
          child: Text('Me'),
        ),
      ),
    );
  }
}

