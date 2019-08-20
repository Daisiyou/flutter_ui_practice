import 'package:flutter/material.dart';

class TableviewModel {
  final String title;
  final Widget widget;

  const TableviewModel({
    @required this.title,
    @required this.widget,
  });
}

class TabsController extends StatelessWidget {
  final String title;
  final List<TableviewModel> models;
  final bool tabScrollable;
  final TabController controller;

  TabsController({
   @required this.title,
   @required this.models,
    this.tabScrollable: true,
   @required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
        bottom: TabBar(
          controller: this.controller,
          isScrollable: this.tabScrollable,
          tabs: this
              .models
              .map((m) => Tab(
                    text: m.title,
                  ))
              .toList(),
        ),
      ),
      body: TabBarView(
        children: this.models.map((m) => m.widget).toList(),
        controller: this.controller,
      ),
    );
  }
}
