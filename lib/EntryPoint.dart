import 'package:camp_yellow/Screens/Screen1_Home.dart';
import 'package:camp_yellow/Screens/Screen2Star.dart';
import 'package:camp_yellow/Screens/Screen3LeaderBoard.dart';
import 'package:camp_yellow/Screens/Screen4_People.dart';
import 'package:camp_yellow/Screens/Screen5User.dart';
import 'package:flutter/material.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  final screens = [
    // ignore: prefer_const_constructors
    Home(),
    // ignore: prefer_const_constructors
    Star(),
    // ignore: prefer_const_constructors
    LeaderBoard(),
    // ignore: prefer_const_constructors
    People(),
    // ignore: prefer_const_constructors
    User()
  ];
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
            ),
            label: "Star",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.leaderboard,
            ),
            label: "LeaderBoard",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
            ),
            label: "People",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.face,
            ),
            label: "User",
          ),
        ],
      ),
    );
  }
}
