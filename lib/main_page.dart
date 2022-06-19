import 'package:bottomnavbar/navbar/page1.dart';
import 'package:bottomnavbar/navbar/page2.dart';
import 'package:bottomnavbar/navbar/page3.dart';
import 'package:bottomnavbar/navbar/page4.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> pages = [Page1(), Page2(), Page3(), Page4()];

  int currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        selectedFontSize: 20,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.blue,
        selectedItemColor: Colors.red,
        unselectedLabelStyle: TextStyle(color: Colors.black),
        selectedLabelStyle: TextStyle(
          color: Colors.red,
          fontSize: 20,
        ),
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.red,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.red),
            label: "search",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.red), label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings, color: Colors.red), label: "Settings"),
        ],
      ),
    );
  }
}
