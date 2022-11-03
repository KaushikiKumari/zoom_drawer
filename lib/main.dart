import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:zoom_drawer/screens/home_screen.dart';
import 'package:zoom_drawer/screens/menu_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final drawerController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ZoomDrawer(
      controller: drawerController,
      style: DrawerStyle.Style1,
      menuScreen: MenuScreen(),
      mainScreen: HomeScreen(drawerController),
      borderRadius: 24.0,
      showShadow: true,
      angle: 0.0,
      backgroundColor: Colors.grey[300]!,
      //  slideWidth: MediaQuery.of(context).size.width * (ZoomDrawer.isRtl?.45:0.65),
      openCurve: Curves.fastOutSlowIn,
      closeCurve: Curves.bounceIn,
    ));
  }
}
