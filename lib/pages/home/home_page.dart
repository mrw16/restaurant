import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testing/theme.dart';
import 'package:testing/widgets/product_card.dart';
import 'package:testing/widgets/restaurant_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi Noha!',
                  style: primaryTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.place_outlined,
                      color: buttonColor,
                      size: 14,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      'Location, Main City-Napgur',
                      style: secondaryTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 12,
                        color: Color(0xffB3B3B3),
                      ),
                    ),
                    Icon(
                      Icons.expand_more_outlined,
                      color: buttonColor,
                    ),
                  ],
                ),
              ],
            ),
            Icon(Icons.notifications),
          ],
        ),
      );
    }

    Widget searchBar() {
      return Container(
        margin: EdgeInsets.all(defaultMargin),
        child: TextFormField(
          style: blackTextStyle.copyWith(fontSize: 12),
          obscureText: true,
          textCapitalization: TextCapitalization.none,
          decoration: InputDecoration.collapsed(
            hintText: 'Search Your food or Restaurant',
            hintStyle: secondaryTextStyle,
          ),
        ),
      );
    }

    Widget promotion() {
      return Container(
        margin: EdgeInsets.only(
          top: 15,
          left: defaultMargin,
          right: defaultMargin,
        ),
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage('assets/banner_voucher.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 25, top: 15),
              child: Text(
                'Get Special Discount',
                style: primaryTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 14,
                  color: Color(0xff9B9B9B),
                ),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Container(
              margin: EdgeInsets.only(left: 25),
              child: Text(
                'up to 75%',
                style: GoogleFonts.inriaSerif(
                  fontSize: 28,
                  fontWeight: bold,
                  color: Color(0xffffffff),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 25,
              margin: EdgeInsets.only(left: 25),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  backgroundColor: whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Claim Voucher',
                  style: primaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: EdgeInsets.all(defaultMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Categories',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            Text(
              'Show all',
              style: textTextStyle.copyWith(
                fontSize: 12,
                fontWeight: medium,
              ),
            ),
          ],
        ),
      );
    }

    Widget listOfCategories() {
      return Container(
        margin: EdgeInsets.only(left: defaultMargin),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ProductCard(),
              ProductCard(),
              ProductCard(),
              ProductCard(),
              ProductCard(),
              ProductCard(),
              ProductCard(),
            ],
          ),
        ),
      );
    }

    Widget restaurant() {
      return Container(
        margin: EdgeInsets.all(defaultMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Restaurant',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            Text(
              'Show all',
              style: textTextStyle.copyWith(
                fontSize: 12,
                fontWeight: medium,
              ),
            ),
          ],
        ),
      );
    }

    Widget listOfRestaurant() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            RestaurantCard(),
            RestaurantCard(),
            RestaurantCard(),
            RestaurantCard(),
            RestaurantCard(),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        searchBar(),
        promotion(),
        categories(),
        listOfCategories(),
        restaurant(),
        listOfRestaurant(),
      ],
    );
  }
}
