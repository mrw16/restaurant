// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:testing/theme.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail-page');
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 17),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              blurRadius: 1.0,
              spreadRadius: 0.0,
              offset: Offset(
                0.0, // Move to right 5  horizontally
                0.0, // Move to bottom 5 Vertically
              ),
              color: secondaryColor,
              blurStyle: BlurStyle.outer,
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/detail_page.png',
                width: 100,
                height: 100,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              width: 13,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    'Burger King',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xffFFD600),
                        size: 14,
                      ),
                      Text(
                        '4.5',
                        style: secondaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 23,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.schedule,
                        color: secondaryColor,
                        size: 14,
                      ),
                      Text(
                        '25-35 mins    8 km',
                        style: secondaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Text(
                'New',
                style: whiteTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
