import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/components/MyTabControllers.dart';

class ListView_build extends StatefulWidget {
  List<String> titles;

  ListView_build({Key key, @required this.titles}) : super(key: key);

  @override
  _ListView_buildState createState() => _ListView_buildState();
}

class _ListView_buildState extends State<ListView_build> {
  @override
  void dispose() {
    super.dispose();
    this.scrController = null;
    print('ListView_build dispose ...');
  }
  
  @override
  void initState() {
    super.initState();
    this.scrController.addListener((){
      print('111:' + '${this.scrController.offset}');
      print('222:' + '${this.scrController.positions.elementAt(0).pixels}');
    });
  }

  var scrController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrController,
      itemCount: widget.titles.length,
      itemExtent: 100,
      itemBuilder: (context, index) {
        if (index == widget.titles.length - 1) {
          return RaisedButton(
            child: Icon(Icons.add),
            onPressed: () {
              this.scrController.animateTo(
                    100,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );

//              var count = index + 1;
//              print('count:::$count');
//              setState(() {
//                widget.titles.add('$count');
//
//
//              });
            },
          );
        }
        return Container(
          child: Center(
            child: Text('${widget.titles[index]}'),
          ),
        );
      },
    );
  }
}

class ListView_separated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("00000:");
    print(context);
    print(MediaQuery.of(context).size);
    print(1/MediaQuery.of(context).devicePixelRatio);
    print(MediaQuery.of(context).padding);
    return ListView.separated(
      itemBuilder: (context, index) {
        return Container(
          alignment: Alignment.center,
          constraints: BoxConstraints(minHeight: 40),
          child: Text('$index'),
        );
      },
      separatorBuilder: (context, index) => Divider(
        height: 1/MediaQuery.of(context).devicePixelRatio,
        indent: 20,
        endIndent: 20,
        color: Colors.black,
      ),
      itemCount: 10,
    );
  }
}

class ListViews extends StatefulWidget {
  @override
  _ListViewsState createState() => _ListViewsState();
}

class _ListViewsState extends State<ListViews>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  List<TableviewModel> _models = [
    TableviewModel(title: 'demo1', widget: StaticListView()),
    TableviewModel(
        title: 'demo2',
        widget: ListView_build(
            titles: ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10'])),
    TableviewModel(title: 'demo3', widget: ListView_separated()),
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
      title: "ListView Demo",
      models: _models,
      controller: this.tabController,
    );
  }
}

class StaticListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("00000:");
    print(context);
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
