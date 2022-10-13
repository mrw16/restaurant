import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testing/theme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget firstRow() {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: 400,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/splash.png'),
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        // height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(top: defaultMargin, left: defaultMargin),
        // color: primaryColor,
        decoration: const BoxDecoration(
          color: Color(0xff010E16),
          boxShadow: [
            BoxShadow(
              color: Color(0xff010E16),
              blurRadius: 50.0, // soften the shadow
              spreadRadius: 0.0, //extend the shadow
              offset: Offset(
                0.0, // Move to right 5  horizontally
                -60.0, // Move to bottom 5 Vertically
              ),
            )
          ],
        ),
        child: Text(
          'Lorem ipsum\ndolor sit amet,\nconsectetur\nadipiscing elit.',
          style: GoogleFonts.inriaSerif(
            fontWeight: bold,
            color: Color(0xffF5F5F5),
            fontSize: 35,
          ),
        ),
      );
    }

    Widget buttonLogin() {
      return Container(
        height: 65,
        width: double.infinity,
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: OutlinedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/log-in');
          },
          child: Text(
            'Login',
            style: GoogleFonts.inriaSerif(
              fontWeight: regular,
              fontSize: 30,
              color: whiteColor,
            ),
          ),
          style: OutlinedButton.styleFrom(
            // backgroundColor: Color(0xff314B61),
            side: BorderSide(
              width: 1,
              color: Color(0xff314B61),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9),
            ),
          ),
        ),
      );
    }

    Widget Footer() {
      return Container(
        margin: EdgeInsets.only(bottom: 30, top: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account? ',
              style: GoogleFonts.inter(
                fontSize: 15,
                fontWeight: light,
                color: Color(0xff375268),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/sign-up');
              },
              child: Text(
                'Create Account',
                style: GoogleFonts.inter(
                  fontSize: 15,
                  fontWeight: light,
                  color: Color(0xffD9D9D9),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: primaryColor,
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: [
          firstRow(),
          content(),
          buttonLogin(),
          Footer(),
        ],
      ),
    );
  }
}
