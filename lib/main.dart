import 'package:design_food_delivery_flutter/const.dart';
import 'package:design_food_delivery_flutter/details_page.dart';
import 'package:design_food_delivery_flutter/widgets/category_title.dart';
import 'package:design_food_delivery_flutter/widgets/food_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: kWhiteColor,
        primaryColor: kPrimaryColor,
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline6: TextStyle(fontWeight: FontWeight.bold),
          button: TextStyle(fontWeight: FontWeight.bold),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.all(10),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimaryColor.withOpacity(.26),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          height: 60,
          width: 60,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: kPrimaryColor),
          child: SvgPicture.asset('assets/icons/plus.svg'),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8, top: 8),
              child: Align(
                child: SvgPicture.asset(
                  'assets/icons/menu.svg',
                  height: 11,
                ),
                alignment: Alignment.topRight,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                'Simple way to find \nTasty food!',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryTitle(
                    title: 'All',
                    active: true,
                  ),
                  CategoryTitle(
                    title: 'Italian',
                  ),
                  CategoryTitle(
                    title: 'Asian',
                  ),
                  CategoryTitle(
                    title: 'Chinese',
                  ),
                  CategoryTitle(
                    title: 'Burgers',
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              height: 50,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: kBorderColor),
              ),
              child: SvgPicture.asset('assets/icons/search.svg'),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FoodCard(
                    title: 'Vegan salad bowl',
                    image: 'assets/images/image_1.png',
                    price: 20,
                    ingredient: 'With red tomatoes',
                    calories: '420 Kcal',
                    press: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailsPage();
                      }));
                    },
                  ),
                  FoodCard(
                    title: 'Vegan salad bowl',
                    image: 'assets/images/image_2.png',
                    price: 20,
                    ingredient: 'With red tomatoes',
                    calories: '420 Kcal',
                    press: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailsPage();
                      }));
                    },
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
