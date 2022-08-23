import 'package:flutter/material.dart';
import 'package:fooddev/screens/details/components/body.dart';
import 'package:fooddev/components/bottom_nav_bar.dart';
import 'package:fooddev/screens/home/components/home_appbar.dart';
import 'package:fooddev/screens/home/components/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: ButtomNav(),
      body: HomeBody(),
    );
  }
}
