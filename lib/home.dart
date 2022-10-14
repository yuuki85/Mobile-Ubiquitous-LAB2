import 'package:flutter/material.dart';
import 'package:fooderlich/card1.dart';
import 'package:fooderlich/card2.dart';

// 1
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override

// 7
  int _selectedIndex = 0;
// 8
  static List<Widget> pages = <Widget>[
    const Card1(),
    const Card2(),
    Container(color: Colors.blue)
  ];
// 9
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Fooderlich',
// 2
                style: Theme.of(context).textTheme.headline6)),
        body: pages[_selectedIndex],
// 4
        bottomNavigationBar: BottomNavigationBar(
// 5
            selectedItemColor:
                Theme.of(context).textSelectionTheme.selectionColor,
// 10
            currentIndex: _selectedIndex,
// 11
            onTap: _onItemTapped,
// 6
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.card_giftcard), label: 'Card'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.card_giftcard), label: 'Card2'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.card_giftcard), label: 'Card3'),
            ]));
  }
}
