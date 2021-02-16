import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import '../bottom_navigation/history_screen.dart';
import '../bottom_navigation/home_screen.dart';
import '../bottom_navigation/plan_screen.dart';
import '../bottom_navigation/profile_screen.dart';

class MainScreen2 extends StatefulWidget {
  @override
  _MainScreen2State createState() => _MainScreen2State();
}

class _MainScreen2State extends State<MainScreen2> {
  var _page=0;
  final pages = [ HomeScreen(), HistoryScreen(), PlanScreen(), ProfileScreen(),];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          index: 0,
          color: Colors.blue,
          buttonBackgroundColor: Colors.blue,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index){
          setState(() {
            _page=index;
          });
          },
          items: [
            Icon(Icons.home_outlined),
            Icon(Icons.history),
            Icon(Icons.next_plan_outlined),
            Icon(Icons.account_circle_outlined),
          ]),
      body: pages[_page],
    );
  }
}
