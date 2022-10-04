import 'package:flutter/material.dart';
import 'author_card.dart';
import 'fooderlich_theme.dart';
import 'config.dart';

class Card2 extends StatefulWidget {
  // final ValueChanged<Icon> update;
  const Card2({Key? key}) : super(key: key);

  @override
  State<Card2> createState() => _Card2State();
}

class _Card2State extends State<Card2> {
  void switchFavIcon() {
    setState(() {
      currentFavButton.switchIcon();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onDoubleTap: () {
          switchFavIcon();
          print("yeah");
        },
        child: Container(
          constraints: const BoxConstraints.expand(width: 350, height: 450),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/mag5.png'), fit: BoxFit.cover),
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: Column(
            children: [
              AuthorCard(
                authorName: "Mike Catz",
                title: "Smoothie Connoissur",
                imageProvider: AssetImage("assets/author_katz.jpeg"),
              ),
              Expanded(
                  child: GestureDetector(
                onDoubleTap: () {
                  // switchFavIcon;
                  print("yeah");
                },
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 16,
                      right: 16,
                      child: Text(
                        'Recipe',
                        style: FooderlichTheme.lightTextTheme.headline1,
                      ),
                    ),
                    Positioned(
                        bottom: 70,
                        left: 16,
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            'Smoothies',
                            style: FooderlichTheme.lightTextTheme.headline1,
                          ),
                        ))
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
