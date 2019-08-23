import 'package:flutter_ui_practice/ui/home.dart';
import 'package:flutter_ui_practice/ui/container.dart';
import 'package:flutter_ui_practice/ui/row.dart';
import 'package:flutter_ui_practice/ui/column.dart';
import 'package:flutter_ui_practice/ui/stack.dart';
import 'package:flutter_ui_practice/ui/text.dart';
import 'package:flutter_ui_practice/ui/image.dart';
import 'package:flutter_ui_practice/ui/listView.dart';
import 'package:flutter_ui_practice/ui/demo1.dart';
import 'package:flutter_ui_practice/ui/bottomNavigation.dart';
import 'package:flutter_ui_practice/ui/animatedContainer.dart';
import 'package:flutter_ui_practice/ui/animatedCross.dart';
import 'package:flutter_ui_practice/ui/TextFieldDemo.dart';

class Router {
  static const home = '/';
  static const text = '/text';
  static const container = '/container';
  static const row = '/row';
  static const column = '/column';
  static const stack = '/stack';
  static const image = '/image';
  static const staticListView = '/staticListView';
  static const listViews = 'listViews';
  static const demo1 = '/demo1';
  static const bottomNav = '/bottomNav';
  static const animatedCon = '/animatedCon';
  static const animatedCross ='/animatedCross';
  static const textFieldDemo = 'textFieldDemo';


  static getRouter() {
    return {
      Router.home       :   (context) => Home(),
      Router.text       :   (context) => Mytext(),
      Router.container  :   (context) => MyContainer(),
      Router.row        :   (context) => MyRow(),
      Router.column     :   (context) => MyColumn(),
      Router.stack      :   (context) => MyStack(),
      Router.image      :   (context) => MyImage(),
      Router.staticListView:(context) => StaticListView(),
      Router.listViews  :   (context) => ListViews(),
      Router.demo1      :   (context) => Demo1(),
      Router.bottomNav  :   (context) => BottomNavigation(),
      Router.animatedCon:   (context) => AnimatedCon(),
      Router.animatedCross: (context) => AnimatedCross(),
      Router.textFieldDemo: (context) => TextFieldDemo(),
     };
  }
}
