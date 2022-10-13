import 'package:flutter/material.dart';
import 'package:testing/theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Image.asset(
            'assets/Ellipse.png',
            width: 70,
            height: 70,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Pizza',
            style: primaryTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
