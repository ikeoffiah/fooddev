import 'package:flutter/material.dart';
import 'package:fooddev/screens/details/components/body.dart';
import 'package:fooddev/constant.dart';
import 'package:fooddev/screens/details/components/detail_appbar.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailAppBar(context),
      body: Body(),
    );
    ;
  }
}
