import 'package:flutter/material.dart';

class RootScreen extends StatefulWidget {
  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int defaultTabLength = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: defaultTabLength,
          child: Column(
            children: <Widget>[
              _containerAppbar,
              _tabBarItems,
              Expanded(
                child: Container(),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: _fatButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget get _appBar => AppBar(title: Text('Nature Save'));

  Widget get _fatButton => FloatingActionButton(
      onPressed: () {}, child: Icon(Icons.search)); // !!! bbak
  Widget get _containerAppbar => Container(height: 50, child: _appBar);
  Widget get _tabBarItems => TabBar(tabs: <Widget>[
        Tab(icon: Icon(Icons.map)),
        Tab(icon: Icon(Icons.home)),
        Tab(icon: Icon(Icons.person_pin))
      ]);
}
