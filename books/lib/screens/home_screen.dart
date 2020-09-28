import 'package:books/widgets/reading_list_card.dart';
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
                  ReadingListCard(
                    title: "Crushing & Influence",
                    author: "Gary Venchunk",
                    image: "assets/images/book-3.png",
                    rating: 4.9,
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
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    width: double.infinity,
                    height: 205,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          child: Container(
                            height: 185,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xFFEAEAEA).withOpacity(.45),
                              borderRadius: BorderRadius.circular(29),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
