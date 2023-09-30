import 'package:flutter/material.dart';
import 'package:swiggy/pages/dineout.dart';
import 'package:swiggy/pages/food.dart';
import 'package:swiggy/pages/instamart.dart';
import 'package:swiggy/pages/minis.dart';
import 'package:swiggy/pages/swiggy.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Swiggy(),
    Food(),
    Instamart(),
    Dineout(),
    Minis(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon  : Icon(Icons.home),
            label: 'Swiggy',
            backgroundColor: Color(0xFF8c8c8f)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood_outlined),
            activeIcon: Icon(Icons.fastfood),
            label: 'Food',
            backgroundColor: Color(0xFF8c8c8f)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_outlined),
            activeIcon: Icon(Icons.shopping_basket),
            label: 'Instamart',
            backgroundColor: Color(0xFF8c8c8f)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dining_outlined),
            activeIcon: Icon(Icons.dining),
            label: 'Dineout',
            backgroundColor: Color(0xFF8c8c8f)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            activeIcon: Icon(Icons.chat_bubble),
            label: 'Minis',
            backgroundColor: Color(0xFF8c8c8f)
          ),
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: const Color(0xFF8c8c8f),
        selectedItemColor: const Color(0xFF292a2c),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
