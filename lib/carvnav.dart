import 'package:bottomnavbar/navbar/page1.dart';
import 'package:bottomnavbar/navbar/page2.dart';
import 'package:bottomnavbar/navbar/page3.dart';
import 'package:bottomnavbar/navbar/page4.dart';
import 'package:flutter/material.dart';
import "package:curved_navigation_bar/curved_navigation_bar.dart";

class CurvedNavDemo extends StatefulWidget {
  const CurvedNavDemo({Key? key}) : super(key: key);

  @override
  State<CurvedNavDemo> createState() => _CurvedNavDemoState();
}

class _CurvedNavDemoState extends State<CurvedNavDemo> {
  List<Widget> pages = [Page1(), Page2(), Page3(), Page4()];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: Cu(
        height: 65,
        animationCurve: Curves.easeInOut,
        buttonBackgroundColor: Colors.red,
        backgroundColor: Colors.blueAccent,
        items: <Widget>[
          Icon(
            currentIndex == 0 ? Icons.add : Icons.anchor,
            size: currentIndex == 0 ? 25 : 18,
          ),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
          Icon(Icons.compare_arrows, size: 30),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}