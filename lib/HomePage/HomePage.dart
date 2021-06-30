import 'package:flutter/material.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';
import 'package:foodiez_app/Bookmark/Bookmark.dart';
import 'package:foodiez_app/Discovery/Discovery.dart';
import 'package:foodiez_app/HomeScreen/HomeScreen.dart';
import 'package:foodiez_app/Profile/Profile.dart';
import 'package:foodiez_app/TopFoddie/TopFoodie.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SearchBar searchBar;
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    Discovery(),
    Bookmark(),
    TopFoodie(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        iconSize: 30,
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.yellow,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Discovery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank),
            label: 'Top Foodie',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
