import 'package:flutter/material.dart';
import 'package:flutter_application_1/themes.dart';

class BookDetails extends StatelessWidget {
  static const nameRoute = '/bookDetails';
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        child: Row(children: [Icon(Icons.chevron_left_rounded)]),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          Column(children: [header()]),
        ],
      ),
    );
  }
}
