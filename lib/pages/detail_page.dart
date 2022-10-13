import 'package:flutter/material.dart';
import 'package:testing/theme.dart';
import 'package:testing/widgets/restaurant_detail_card.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          bottom: 12,
        ),
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/detail-page');
          },
          backgroundColor: primaryColor,
          child: Container(
            margin: EdgeInsets.only(
              left: 26,
              right: 26,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'View Cart',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  '\$ 7',
                  style: whiteTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget header() {
      return Container(
        height: 220,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/detail_page.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 20,
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(126, 217, 217, 217),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 20,
                        color: whiteColor,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(126, 217, 217, 217),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(
                      Icons.favorite_border_rounded,
                      size: 20,
                      color: whiteColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        padding: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
        ),
        transformAlignment: Alignment(0.0, 100.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: whiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Burger King',
              style: primaryTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.star_rounded,
                  color: Color(0xffFFD600),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '4.5',
                  style: secondaryTextStyle.copyWith(
                    color: Color(0xffB3B3B3),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Icon(
                  Icons.schedule_outlined,
                  color: Color(0xffB3B3B3),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  '25-35 mins',
                  style: secondaryTextStyle.copyWith(
                    color: Color(0xffB3B3B3),
                  ),
                ),
                SizedBox(
                  width: 35,
                ),
                Text(
                  '8 km',
                  style: secondaryTextStyle.copyWith(
                    color: Color(0xffB3B3B3),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: defaultMargin),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 84,
                      height: 30,
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      margin: EdgeInsets.only(right: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: primaryColor,
                      ),
                      child: Text(
                        'Burger',
                        style: whiteTextStyle.copyWith(
                          fontSize: 13,
                          fontWeight: medium,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 84,
                      height: 30,
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      margin: EdgeInsets.only(right: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: whiteColor,
                        border: Border.all(
                          color: primaryColor,
                        ),
                      ),
                      child: Text(
                        'Fries',
                        style: primaryTextStyle.copyWith(
                          fontSize: 13,
                          fontWeight: medium,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 84,
                      height: 30,
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      margin: EdgeInsets.only(right: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: whiteColor,
                        border: Border.all(
                          color: primaryColor,
                        ),
                      ),
                      child: Text(
                        'Coac',
                        style: primaryTextStyle.copyWith(
                          fontSize: 13,
                          fontWeight: medium,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 84,
                      height: 30,
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      margin: EdgeInsets.only(right: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: whiteColor,
                        border: Border.all(
                          color: primaryColor,
                        ),
                      ),
                      child: Text(
                        'Meals',
                        style: primaryTextStyle.copyWith(
                          fontSize: 13,
                          fontWeight: medium,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 84,
                      height: 30,
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      margin: EdgeInsets.only(right: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: whiteColor,
                        border: Border.all(
                          color: primaryColor,
                        ),
                      ),
                      child: Text(
                        'Spagheti',
                        style: primaryTextStyle.copyWith(
                          fontSize: 13,
                          fontWeight: medium,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 26,
            ),
            RestaurantDetailCard(),
            RestaurantDetailCard(),
            RestaurantDetailCard(),
            SizedBox(
              height: 60,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: blackColor,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
