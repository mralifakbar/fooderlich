import 'package:flutter/material.dart';
import 'package:fooderlich/config.dart';
import 'package:fooderlich/models/grocery_manager.dart';
import 'package:fooderlich/models/tab_manager.dart';
import 'package:provider/provider.dart';
import 'fooderlich_theme.dart';
import 'home.dart';

void main() {
  runApp(Fooderlich());
}

class Fooderlich extends StatefulWidget {
  _FooderlichState createState() => _FooderlichState();
}

class _FooderlichState extends State<Fooderlich> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      print("Berubah");
      setState(() {});
    });
  }

  Widget build(BuildContext context) {
    // final theme = FooderlichTheme.dark();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fooderlich',
      theme: currentTheme.currentTheme(),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<TabManager>(create: (context) => TabManager()),
          ChangeNotifierProvider<GroceryManager>(
              create: (context) => GroceryManager()),
        ],
        child: const Home(),
      ),
    );
  }
}
