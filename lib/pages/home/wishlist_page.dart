import 'package:flutter/material.dart';
import 'package:testing/theme.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor2,
        centerTitle: true,
        title: Text(
          'Favorite Restaurant',
          style: primaryTextStyle,
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptyWishlist() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: backgroundColor2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.favorite_rounded,
                size: 80,
              ),
              SizedBox(
                height: 23,
              ),
              Text(
                'You don\'t have dream restaurant?',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Let\'s find your favorite restaurant',
                style: secondaryTextStyle.copyWith(
                  color: Color(0xffB3B3B3),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 44,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 22,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    side: BorderSide(
                      width: 2,
                      color: Color(0xff314B61),
                    ),
                  ),
                  child: Text(
                    'Explore Restaurant',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        emptyWishlist(),
      ],
    );
  }
}
