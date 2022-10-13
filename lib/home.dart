import 'package:flutter/material.dart';
import 'package:fooderlich/screens/recipes_screen.dart';
import 'components/components.dart';
import 'models/explore_recipe.dart';
import 'config.dart';
import 'screens/explore_screen.dart';
import 'screens/recipes_screen.dart';
import 'screens/grocery_screen.dart';
import 'package:provider/provider.dart';
import 'models/models.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    ExploreScreen(),
    RecipesScreen(),
    const GroceryScreen()
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
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //     onPressed: () {
      //       currentTheme.switchTheme();
      //     },
      //     label: Text('Ganti Tema'),
      //     icon: Icon(Icons.brightness_high)),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor:
              Theme.of(context).textSelectionTheme.selectionColor,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Explore',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Recipes',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'To Buy',
            ),
          ]),
    );
  }
}
