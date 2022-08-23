import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fooddev/constant.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Offers & Discount",
            style: TextStyle(fontWeight: FontWeight.bold, color: kTextColor),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            width: double.infinity,
            height: 166,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/waakye.jpg"))),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Row(children: [
                Expanded(
                    child: SvgPicture.asset("assets/icons/macdonalds.svg")),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                        style: TextStyle(color: Colors.white),
                        children: [
                          TextSpan(
                            text: "Get Discount of \n",
                            style: TextStyle(fontSize: 16),
                          ),
                          TextSpan(
                              text: "30% \n",
                              style: TextStyle(
                                fontSize: 43,
                                fontWeight: FontWeight.bold,
                              )),
                          TextSpan(
                              text:
                                  "at Mama Waakye on your first order & Instant cashback",
                              style: TextStyle(fontSize: 10)),
                        ]),
                  ),
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
