import 'package:Design2/Screen/Dashboard/Dashboard.dart';
import 'package:Design2/Screen/Profile/Profile.dart';
import 'package:Design2/components/CustomBottomNav.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Design2',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

ThemeData appTheme =
    ThemeData(primaryColor: Color(0xFFF3791A), fontFamily: 'Oxygen');

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int pageIndex = 0;

  final List<Widget> _children = [Dashboard(), Profile()];
  void onItemTappedpage(int tappedItemIndex) {
    setState(() {
      pageIndex = tappedItemIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xFFF47D15),
    ));

    return Scaffold(
      body: Container(child: _children[pageIndex]),
      bottomNavigationBar: CustomBottomNav(
        indexPage: pageIndex,
        onPressedFunction: onItemTappedpage,
      ),
    );
  }
}
