import 'package:books/constants.dart';
import 'package:books/widgets/book_rating.dart';
import 'package:books/widgets/reading_list_card.dart';
import 'package:books/widgets/two_side_rounded_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            fit: BoxFit.fitWidth,
            image: AssetImage("assets/images/main_page_bg.png"),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: size.height * .1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.headline4,
                  children: [
                    TextSpan(text: "What are you\nreading "),
                    TextSpan(
                        text: "today?",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  ReadingListCard(
                    title: "Crushing & Influence",
                    author: "Gary Venchunk",
                    image: "assets/images/book-1.png",
                    rating: 4.9,
                  ),
                  ReadingListCard(
                    title: "Top Ten Businnes Hack",
                    author: "Herman Joel ",
                    image: "assets/images/book-2.png",
                    rating: 4.8,
                  ),
                  SizedBox(
                    width: 30,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.headline4,
                        children: [
                          TextSpan(text: "Best of "),
                          TextSpan(
                            text: "day",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ]),
                  ),
                  bestOfTheDayCard(size, context),
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.headline4,
                      children: [
                        TextSpan(text: "Contine"),
                        TextSpan(text: "reading..."),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container bestOfTheDayCard(Size size, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 205,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 24,
                top: 24,
                right: size.width * .35,
              ),
              height: 185,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFEAEAEA).withOpacity(.45),
                borderRadius: BorderRadius.circular(29),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "New York Time Best For 11th March 2020",
                    style: TextStyle(
                      fontSize: 9,
                      color: secondaryColor,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "How To Win\nFriends & Influence",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    "Gary Venchunk",
                    style: TextStyle(
                      color: secondaryColor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      BookRating(
                        score: 4.9,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "When the earth was flat and everyone wanted to win game of the best and people...",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10,
                            color: secondaryColor,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              "assets/images/book-3.png",
              width: size.width * .37,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 40,
              width: size.width * .3,
              child: TwoSideRoundedButton(
                text: "Read",
                radious: 24,
                press: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
