import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/router/router.dart';
import 'package:flutter_ui_practice/ui/home.dart';
import 'package:flutter_ui_practice/ui/container.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: Router.home,
      routes: {
        Router.home           : (context) => Home(),
        Router.container      : (context) => MyContainer(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
//      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

