import 'package:flutter_ui_practice/ui/home.dart';
import 'package:flutter_ui_practice/ui/container.dart';
import 'package:flutter_ui_practice/ui/row.dart';
import 'package:flutter_ui_practice/ui/column.dart';
import 'package:flutter_ui_practice/ui/stack.dart';

class Router {
  static const home = '/';
  static const container = '/container';
  static const row = '/row';
  static const column = 'column';
  static const stack = 'stack';

  static getRouter() {
    return {
      Router.home: (context) => Home(),
      Router.container: (context) => MyContainer(),
      Router.row: (context) => MyRow(),
      Router.column: (context) => MyColumn(),
      Router.stack:(context) => MyStack(),
    };
  }
}
