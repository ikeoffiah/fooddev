import 'package:flutter/material.dart';
import 'package:fooddev/constant.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class TitlePriceRating extends StatelessWidget {
  final int price, numOfReviews;
  final double rating;
  final String name;
  final RatingChangeCallback onRatingChanged;

  const TitlePriceRating(
      {Key? key,
      required this.price,
      required this.rating,
      required this.name,
      required this.numOfReviews,
      required this.onRatingChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SmoothStarRating(
                    borderColor: kPrimaryColor,
                    rating: rating,
                    onRated: onRatingChanged,
                  )
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Text("${numOfReviews} reviews")
            ],
          )),
          priceTag(context, price: price)
        ],
      ),
    );
  }
}

ClipPath priceTag(BuildContext context, {int? price}) {
  return ClipPath(
    clipper: PricerCliper(),
  );
}

class PricerCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double ignoreHeight = 20;
    path.lineTo(0, size.height - ignoreHeight);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height - ignoreHeight);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
