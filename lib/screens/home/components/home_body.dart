import 'package:flutter/material.dart';
import 'package:fooddev/components/search_box.dart';
import 'package:fooddev/screens/home/components/category_list.dart';
import 'package:fooddev/screens/home/components/discount_card.dart';
import 'package:fooddev/screens/home/components/item_list.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchBox(onChanged: (value) {}),
          CategoryList(),
          ItemList(),
          DiscountCard()
        ],
      ),
    );
  }
}
