import 'package:amit/Category.dart';
import 'package:amit/HomePage.dart';
import 'package:amit/Login.dart';
import 'package:amit/SignUp.dart';
import 'package:flutter/material.dart';

class BotNavBar extends StatefulWidget {
  @override
  State<BotNavBar> createState() => _BotNavBarState();
}

class _BotNavBarState extends State<BotNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index /*0 1 2 3*/) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    CategoryScreen(),
    Login(),
    SignUp()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('BottomNavigationBar Demo'),
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
      ),
    );
  }
}
