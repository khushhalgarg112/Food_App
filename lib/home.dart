import 'package:flutter/material.dart';
import 'card1.dart';
import 'card2.dart';
import 'card3.dart';

class Home extends StatefulWidget {
 @override
 _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  int _selectedIndex = 0;
  
static List<Widget> pages = <Widget>[
   Card1(),
   Card2(),
   Card3(),
];

void _onItemTapped(int index) {
   setState(() {
      _selectedIndex = index;
 });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fooderlich',
          style: Theme.of(context).textTheme.headline6)),
          body: pages[_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
                  // ignore: prefer_const_literals_to_create_immutables
                  items: <BottomNavigationBarItem>[
                            const BottomNavigationBarItem(icon: Icon(Icons.card_giftcard),
                                        label: 'Card1'),
                            const BottomNavigationBarItem(icon: Icon(Icons.card_giftcard),
                                        label: 'Card2'),
                            const BottomNavigationBarItem(icon: Icon(Icons.card_giftcard),
                                        label: 'Card3'),
        ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
      )
    );
  }
}
