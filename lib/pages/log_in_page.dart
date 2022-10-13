import 'package:flutter/material.dart';
import 'package:testing/theme.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    header() {
      return Container(
        margin: EdgeInsets.only(
          top: 60,
          left: defaultMargin,
          right: defaultMargin,
          bottom: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back!',
              style: whiteTextStyle.copyWith(
                fontSize: 16,
                fontWeight: bold,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'Login for using our feature',
              style: secondaryTextStyle.copyWith(
                fontSize: 12,
                fontWeight: light,
              ),
            ),
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: whiteTextStyle.copyWith(
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Icon(
                      Icons.email_outlined,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: blackTextStyle.copyWith(fontSize: 12),
                        keyboardType: TextInputType.emailAddress,
                        textCapitalization: TextCapitalization.none,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Email Address',
                          hintStyle: secondaryTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: whiteTextStyle.copyWith(
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Icon(
                      Icons.password_outlined,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: blackTextStyle.copyWith(fontSize: 12),
                        obscureText: true,
                        textCapitalization: TextCapitalization.none,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Password',
                          hintStyle: secondaryTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget SignInButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.all(defaultMargin),
        child: OutlinedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          style: OutlinedButton.styleFrom(
            side: BorderSide(
              width: 1,
              color: Color(0xff314B61),
            ),
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            'Log In',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
        ),
      );
    }

    Widget Footer() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account? ',
              style: whiteTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/sign-up');
              },
              child: Text(
                'Sign Up',
                style: secondaryTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(),
          emailInput(),
          SizedBox(
            height: 10,
          ),
          passwordInput(),
          SignInButton(),
          Spacer(),
          Footer(),
        ],
      ),
    );
  }
}
