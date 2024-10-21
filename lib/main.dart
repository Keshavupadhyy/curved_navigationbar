import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CurvedNavigationBarDemo(),
    );
  }
}

class CurvedNavigationBarDemo extends StatefulWidget {
  @override
  _CurvedNavigationBarDemoState createState() =>
      _CurvedNavigationBarDemoState();
}

class _CurvedNavigationBarDemoState extends State<CurvedNavigationBarDemo> {
  int _pageIndex = 0;

  final _pageOptions = [
    Center(child: Text('Home', style: TextStyle(fontSize: 24))),
    Center(child: Text('Search', style: TextStyle(fontSize: 24))),
    Center(child: Text('Profile', style: TextStyle(fontSize: 24))),
    Center(child: Text('Settings', style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Curved Navigation Bar'),
      ),
      body: _pageOptions[_pageIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent, // Background of the page
        color: Colors.white, // Color of the nav bar
        buttonBackgroundColor: Colors.blue, // Color of the selected button
        height: 60, // Height of the navigation bar
        animationDuration: Duration(milliseconds: 300), // Animation speed
        animationCurve: Curves.easeInOut, // Animation curve for smoothness
        items: <Widget>[
          Icon(Icons.home, size: 30, color: Colors.black),
          Icon(Icons.search, size: 30, color: Colors.black),
          Icon(Icons.person, size: 30, color: Colors.black),
          Icon(Icons.settings, size: 30, color: Colors.black),
        ],
        onTap: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
      ),
    );
  }
}
