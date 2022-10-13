import 'package:flutter/material.dart';
import 'package:testing/theme.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Cart Page',
        style: primaryTextStyle,
      ),
    );
  }
}