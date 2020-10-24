import 'package:flutter/material.dart';

import '../const.dart';

class FoodCard extends StatelessWidget {
  final String title;
  final String ingredient;
  final String image;
  final int price;
  final String calories;
  final Function press;

  const FoodCard({
    Key key,
    this.title,
    this.ingredient,
    this.image,
    this.price,
    this.calories,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(left: 20),
        height: 400,
        width: 270,
        child: Stack(
          children: [
            //Big light background
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                height: 380,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(34),
                    color: kPrimaryColor.withOpacity(.06)),
              ),
            ),
            //Rounded background
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                height: 181,
                width: 181,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kPrimaryColor.withOpacity(.15)),
              ),
            ),
            //Food image
            Positioned(
              top: 0,
              left: -50,
              child: Container(
                height: 184,
                width: 276,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(image))),
              ),
            ),
            // Price
            Positioned(
              right: 20,
              top: 80,
              child: Text(
                '\$$price',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(color: kPrimaryColor),
              ),
            ),
            Positioned(
              top: 201,
              left: 40,
              child: Container(
                width: 210,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      ingredient,
                      style: TextStyle(color: kTextColor.withOpacity(.4)),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempus mauris et ultrices semper. In laoreet nulla ex, quis pulvinar velit bibendum at. Mauris dignissim sapien vitae euismod placerat. Proin tincidunt velit non dapibus maximus. Ut sollicitudin pulvinar nisl, at aliquet orci rhoncus ac. Morbi imperdiet consequat pulvinar. Sed ultrices blandit sollicitudin.',
                      maxLines: 3,
                      style: TextStyle(color: kTextColor.withOpacity(.7)),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(calories),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
