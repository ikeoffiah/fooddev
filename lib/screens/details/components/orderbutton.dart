import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fooddev/constant.dart';

class OrderButton extends StatelessWidget {
  final Size size;
  final VoidCallback press;
  const OrderButton({Key? key, required this.size, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: press,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SvgPicture.asset("assets/icons/bag.svg"),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "order Now",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )
              ]),
            )),
      ),
    );
  }
}
