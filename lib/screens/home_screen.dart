import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomeScreen extends StatefulWidget {
  final zoomDrawerController;
  HomeScreen(this.zoomDrawerController);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF464dfe),
        appBar: AppBar(
            title: Text('home page'),
            leading: InkWell(
              onTap:()=>widget.zoomDrawerController.toggle(),
              child: Icon(Icons.menu))),
        body: SafeArea(
            child: Column(
          children: [],
        )));
  }
}
