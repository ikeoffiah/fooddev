import 'package:flutter/material.dart';
import 'package:fooddev/screens/details/detail_screen.dart';
import 'package:fooddev/screens/home/components/item_card.dart';

class ItemList extends StatelessWidget {
  const ItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ItemCard(
              title: "Burger & Beer",
              shopName: "MacDonald's",
              svgSrc: "assets/icons/burger_beer.svg",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen();
                }));
              }),
          ItemCard(
              title: "Chinese & Noodles",
              shopName: "Wendys",
              svgSrc: "assets/icons/chinese_noodles.svg",
              press: () {}),
          ItemCard(
              title: "Burger & Beer",
              shopName: "MacDonald's",
              svgSrc: "assets/icons/burger_beer.svg",
              press: () {})
        ],
      ),
    );
  }
}
