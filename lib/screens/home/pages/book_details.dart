import 'package:flutter/material.dart';
import 'package:flutter_application_1/themes.dart';

class BookDetails extends StatelessWidget {
  static const nameRoute = '/bookDetails';
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        margin: EdgeInsets.only(top: 30, bottom: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Icon(Icons.chevron_left_rounded, size: 30),
            ),
            Text(
              'Book Details',
              style: semiBoldText14.copyWith(color: blackColor),
            ),
            InkWell(
              onTap: () {
                // Handle share action
              },
              child: Icon(Icons.share_outlined, size: 30),
            ),
          ],
        ),
      );
    }

    Widget bookImage() {
      return Container(
        height: 267,
        width: 175,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/trending_book_1.png'),
          ),
        ),
      );
    }

    Widget infoDescription() {
      return Container(
        height: 60,
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        decoration: BoxDecoration(
          color: greyColorInfo,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  'Rating',
                  style: mediumText10.copyWith(color: dividerColor),
                ),
                SizedBox(height: 2),
                Text('4.8', style: semiBoldText12.copyWith(color: blackColor2)),
              ],
            ),
            VerticalDivider(color: dividerColor, thickness: 1, width: 20),
            Column(
              children: [
                Text(
                  'Number of pages',
                  style: mediumText10.copyWith(color: dividerColor),
                ),
                SizedBox(height: 2),
                Text(
                  '320 Pages',
                  style: semiBoldText12.copyWith(color: blackColor2),
                ),
              ],
            ),
            VerticalDivider(color: dividerColor, thickness: 1, width: 20),
            Column(
              children: [
                Text(
                  'Language',
                  style: mediumText10.copyWith(color: dividerColor),
                ),
                SizedBox(height: 2),
                Text('ENG', style: semiBoldText12.copyWith(color: blackColor2)),
              ],
            ),
          ],
        ),
      );
    }

    Widget buttonReadNow() {
      return Container(
        height: 50,
        width: double.infinity,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: greenColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Text(
            'Read Now',
            style: semiBoldText20.copyWith(color: whiteColor),
          ),
        ),
      );
    }

    Widget description() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Enchantment',
                        style: semiBoldText20.copyWith(color: blackColor2),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        'Guy Kawasaki',
                        style: mediumText14.copyWith(color: greyColor),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  'Free Access',
                  style: mediumText14.copyWith(color: greenColor),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              'Description',
              style: semiBoldText14.copyWith(color: blackColor2),
            ),
            SizedBox(height: 6),
            Text(
              'Enchantment is about changing hearts, minds, and actions. '
              'It\'s about creating a lasting emotional connection between you and your audience.',
              style: regularText12.copyWith(color: greyColor),
              textAlign: TextAlign.justify,
            ),
            infoDescription(),
            SizedBox(height: 30),
            buttonReadNow(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          Stack(
            children: [
              Column(children: [header(), bookImage(), description()]),
            ],
          ),
        ],
      ),
    );
  }
}
