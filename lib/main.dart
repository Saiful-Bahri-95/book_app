import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/bottom_nav_bar.dart';
import 'package:flutter_application_1/screens/home/home_page.dart';
import 'package:flutter_application_1/screens/home/pages/book_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Book App',
      debugShowCheckedModeBanner: false,
      routes: {
        BottomNavBar.nameRoute: (context) => BottomNavBar(),
        HomePage.nameRoute: (context) => HomePage(),
        BookDetails.nameRoute: (context) => BookDetails(),
      },
    );
  }
}
