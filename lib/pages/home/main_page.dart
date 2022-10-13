import 'package:flutter/material.dart';
import 'package:testing/pages/home/cart_page.dart';
import 'package:testing/pages/home/home_page.dart';
import 'package:testing/pages/home/profile_page.dart';
import 'package:testing/pages/home/wishlist_page.dart';
import 'package:testing/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget customBottomNav() {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 12,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            backgroundColor: backgroundColor2,
            currentIndex: currentIndex,
            onTap: (value) {
              print(value);
              setState(() {
                currentIndex = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: currentIndex == 0 ? primaryColor : Color(0xffffffff),
                    borderRadius: BorderRadius.circular(
                      50,
                    ),
                  ),
                  margin: EdgeInsets.only(
                    top: 20,
                    // bottom: 10,
                  ),
                  child: Icon(
                    Icons.home_outlined,
                    color: currentIndex == 0 ? whiteColor : Color(0xff9B9B9B),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: currentIndex == 1 ? primaryColor : Color(0xffffffff),
                    borderRadius: BorderRadius.circular(
                      50,
                    ),
                  ),
                  margin: EdgeInsets.only(
                    top: 20,
                    // bottom: 10,
                  ),
                  child: Icon(
                    Icons.favorite_border_rounded,
                    color: currentIndex == 1 ? whiteColor : Color(0xff9B9B9B),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: currentIndex == 2 ? primaryColor : Color(0xffffffff),
                    borderRadius: BorderRadius.circular(
                      50,
                    ),
                  ),
                  margin: EdgeInsets.only(
                    top: 20,
                    // bottom: 10,
                  ),
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: currentIndex == 2 ? whiteColor : Color(0xff9B9B9B),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: currentIndex == 3 ? primaryColor : Color(0xffffffff),
                    borderRadius: BorderRadius.circular(
                      50,
                    ),
                  ),
                  margin: EdgeInsets.only(
                    top: 20,
                    // bottom: 10,
                  ),
                  child: Icon(
                    Icons.person_outline_outlined,
                    color: currentIndex == 3 ? whiteColor : Color(0xff9B9B9B),
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return WishlistPage();
        case 2:
          return CartPage();
        case 3:
          return ProfilePage();
          break;

        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: backgroundColor2,
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
