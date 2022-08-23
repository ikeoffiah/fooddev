import 'package:flutter/material.dart';
import 'package:fooddev/constant.dart';
import 'package:fooddev/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food dev',
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: Colors.white,
          textTheme: TextTheme(
              bodyText1: TextStyle(color: ksecondaryColor),
              bodyText2: TextStyle(color: ksecondaryColor))),
      home: HomeScreen(),
    );
  }
}
