import 'package:flutter_ui_practice/ui/home.dart';
import 'package:flutter_ui_practice/ui/container.dart';
import 'package:flutter_ui_practice/ui/row.dart';
import 'package:flutter_ui_practice/ui/column.dart';
import 'package:flutter_ui_practice/ui/stack.dart';
import 'package:flutter_ui_practice/ui/text.dart';
import 'package:flutter_ui_practice/ui/image.dart';

class Router {
  static const home = '/';
  static const text = '/text';
  static const container = '/container';
  static const row = '/row';
  static const column = '/column';
  static const stack = '/stack';
  static const image = '/image';

  static getRouter() {
    return {
      Router.home       :   (context) => Home(),
      Router.text       :   (context) => Mytext(),
      Router.container  :   (context) => MyContainer(),
      Router.row        :   (context) => MyRow(),
      Router.column     :   (context) => MyColumn(),
      Router.stack      :   (context) => MyStack(),
      Router.image      :   (context) => MyImage(),
     };
  }
}
