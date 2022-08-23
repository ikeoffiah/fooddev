import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fooddev/constant.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
        onPressed: () {}, icon: SvgPicture.asset('assets/icons/menu.svg')),
    title: RichText(
        text:
            TextSpan(style: TextStyle(fontWeight: FontWeight.bold), children: [
      TextSpan(text: "Food", style: TextStyle(color: ksecondaryColor)),
      TextSpan(text: "Dev", style: TextStyle(color: kPrimaryColor))
    ])),
    actions: <Widget>[
      IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/notification.svg"))
    ],
  );
}
