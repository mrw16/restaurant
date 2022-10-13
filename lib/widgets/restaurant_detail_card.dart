// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:testing/theme.dart';

class RestaurantDetailCard extends StatelessWidget {
  const RestaurantDetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 17, right: defaultMargin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            blurRadius: 2.0,
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
                Row(
                  children: [
                    Text(
                      'Chicken Burger',
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(
                      width: 17,
                    ),
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
                  height: 6,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: secondaryTextStyle.copyWith(
                                fontSize: 12,
                                color: Color(0xff9B9B9B),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text(
                            '\$ 7',
                            style: primaryTextStyle.copyWith(
                              fontSize: 17,
                              fontWeight: bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2.0,
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
                          child: Icon(
                            Icons.remove_rounded,
                            size: 15,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '1',
                          style: primaryTextStyle.copyWith(
                            fontWeight: medium,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2.0,
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
                          child: Icon(
                            Icons.add_rounded,
                            size: 15,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
