import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Flutter Bottom Navigation'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _page = 2;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.greenAccent,
        key: _bottomNavigationKey,
        index: 2,
        items: <Widget>[
          Icon(Icons.add_location, size: 30),
          Icon(Icons.alarm, size: 30),
          Icon(Icons.dashboard, size: 30),
          Icon(Icons.supervised_user_circle, size: 30),
          Icon(Icons.cloud_upload, size: 30),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
      body: Container(
        color: Colors.greenAccent,
        child: Center(
          child: Text(
            "Page no : " + (_page + 1).toString(),
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
