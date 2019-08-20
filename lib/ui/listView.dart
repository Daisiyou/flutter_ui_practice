import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/components/MyTabControllers.dart';

class ListViews extends StatefulWidget {
  @override
  _ListViewsState createState() => _ListViewsState();
}

class _ListViewsState extends State<ListViews>
    with SingleTickerProviderStateMixin {

  TabController tabController;

  List<TableviewModel> _models = [
    TableviewModel(title: 'demo1', widget: StaticListView()),
    TableviewModel(title: 'demo2', widget: StaticListView()),
    TableviewModel(title: 'demo3', widget: StaticListView()),
    TableviewModel(title: 'demo4', widget: StaticListView()),
    TableviewModel(title: 'demo5', widget: StaticListView()),
    TableviewModel(title: 'demo6', widget: StaticListView()),
    TableviewModel(title: 'demo7', widget: StaticListView()),

  ];

  @override
  void initState() {
    super.initState();
    this.tabController = TabController(length: _models.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    this.tabController.dispose();
    print('listViews dispose...');
  }

  @override
  Widget build(BuildContext context) {
    return TabsController(
      title: "ListView Demo", models: _models, controller: this.tabController,);
  }
}


class StaticListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
//      scrollDirection: Axis.horizontal,
      physics: AlwaysScrollableScrollPhysics(),
      itemExtent: 50.0,
      children: <Widget>[
        Text(
          '1',
          style: TextStyle(color: Colors.red, backgroundColor: Colors.yellow),
        ),
        Text('2'),
        Text('3'),
        Text('4'),
        Container(
          child: Text('5'),
          color: Colors.red,
          alignment: Alignment.center,
        ),
      ],
    );
  }
}



