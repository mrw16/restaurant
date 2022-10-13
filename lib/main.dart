import 'package:flutter/material.dart';
import 'package:testing/pages/detail_page.dart';
import 'package:testing/pages/home/main_page.dart';
import 'package:testing/pages/log_in_page.dart';
import 'package:testing/pages/sign_in_page.dart';
import 'package:testing/pages/sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SignInPage(),
        '/log-in': (context) => const LogInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/home': (context) => MainPage(),
        '/detail-page': (context) => DetailPage(),
      },
    );
  }
}
