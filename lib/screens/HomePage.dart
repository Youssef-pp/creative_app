// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_assignment/screens/profile_screen.dart';
import 'package:flutter_assignment/screens/search_screen.dart';
import 'package:flutter_assignment/widgets/home_screen.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  int index = 0;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> pages = [
    HomePage(),
    ProfileScreen(),
    SearchScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xffde40fa),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              color: Colors.white,
            ),
            SizedBox(width: 8.0),
            Text(
              'Creative App',
              style: TextStyle(color: Color.fromARGB(255, 250, 249, 249)),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          pages[widget.index],
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: widget.index,
        onTap: (value) {
          setState(() {
            widget.index = value;
          });
        },
        selectedItemColor: const Color(0xffde40fa),
        type: BottomNavigationBarType.fixed,
        elevation: 16.0,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
