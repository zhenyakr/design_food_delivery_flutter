import 'package:design_food_delivery_flutter/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    'assets/icons/backward.svg',
                    height: 11,
                  ),
                  SvgPicture.asset(
                    'assets/icons/menu.svg',
                    height: 11,
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(6),
                margin: EdgeInsets.symmetric(vertical: 30),
                height: 305,
                width: 305,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kSecondaryColor,
                ),
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/image_1_big.png'))),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Vegan Salad Bowl\n',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        TextSpan(
                          text: 'With red tomato',
                          style: TextStyle(
                            color: kTextColor.withOpacity(.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '\$20',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempus mauris et ultrices semper. In laoreet nulla ex, quis pulvinar velit bibendum at. Mauris dignissim sapien vitae euismod placerat. Proin tincidunt velit non dapibus maximus. Ut sollicitudin pulvinar nisl, at aliquet orci rhoncus ac. Morbi imperdiet consequat pulvinar. Sed ultrices blandit sollicitudin.',
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      decoration: BoxDecoration(
                        color: kPrimaryColor.withOpacity(.19),
                        borderRadius: BorderRadius.circular(27),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Add to bag',
                            style: Theme.of(context).textTheme.button,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          SvgPicture.asset('assets/icons/forward.svg'),
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kPrimaryColor.withOpacity(.26),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(12),
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kPrimaryColor,
                            ),
                            child: SvgPicture.asset(
                              'assets/icons/bag.svg',
                            ),
                          ),
                          Positioned(
                            right: 15,
                            bottom: 10,
                            child: Container(
                              alignment: Alignment.center,
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: kWhiteColor,
                              ),
                              child: Text(
                                '0',
                                style: Theme.of(context)
                                    .textTheme
                                    .button
                                    .copyWith(
                                        color: kPrimaryColor, fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
