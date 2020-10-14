import 'package:books/constants.dart';
import 'package:books/widgets/book_rating.dart';
import 'package:books/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Card(size: size),
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              height: size.height * .4,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"),
                  fit: BoxFit.fitWidth,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: size.height * .1),
                    BookInfo()
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * .4 - 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ChapterCard(
                    name: "Money",
                    tag: "Life is about of change",
                    number: 1,
                    press: () {},
                  ),
                  ChapterCard(
                    name: "Power",
                    tag: "Life is about of change",
                    number: 2,
                    press: () {},
                  ),
                  ChapterCard(
                    name: "Influence",
                    tag: "Life is about of change",
                    number: 3,
                    press: () {},
                  ),
                  ChapterCard(
                    name: "win",
                    tag: "Life is about of change",
                    number: 4,
                    press: () {},
                  ),
                  SizedBox(height: 10)
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.headline4,
                  children: [
                    TextSpan(
                      text: "You might also ",
                      style: TextStyle(color: primaryColor),
                    ),
                    TextSpan(
                      text: "like...",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: <Widget>[
                  Container(
                    height: 180,
                    width: double.infinity,
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.only(top: 24, left: 24, right: 150),
                      height: 160,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(29),
                        color: Color(0xFFFFF8F9),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              style: TextStyle(color: primaryColor),
                              children: [
                                TextSpan(
                                  text: "How To Win \nFriends & Influence \n",
                                  style: TextStyle(fontSize: 20),
                                ),
                                TextSpan(
                                  text: "Gary Venchuk",
                                  style: TextStyle(color: secondaryColor),
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              BookRating(
                                score: 4.9,
                              ),
                              SizedBox(width: 20),
                              RoundedButton(text: "Read", verticalPadding: 10)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Image.asset(
                      "assets/images/book-3.png",
                      width: 150,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 40,
        )
      ],
    );
  }
}

class ChapterCard extends StatelessWidget {
  final String name;
  final String tag;
  final int number;
  final Function press;

  const ChapterCard({
    this.name,
    this.tag,
    this.number,
    this.press,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      margin: EdgeInsets.only(bottom: 16),
      width: size.width - 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(38.5),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 33,
            color: Color(0xFFD3D3D3).withOpacity(.84),
          )
        ],
      ),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Chapter $number : $name \n",
                  style: TextStyle(
                    fontSize: 16,
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: tag,
                  style: TextStyle(color: secondaryColor),
                )
              ],
            ),
          ),
          Spacer(),
          IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
            onPressed: null,
          )
        ],
      ),
    );
  }
}

class BookInfo extends StatelessWidget {
  const BookInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Crushing &",
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                "Influence",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat exercitationem ut doloribus, quia maiores perspiciatis tenetur sed numquam eum ad similique officiis ea aut itaque, dolorem eos, id non laboriosam!',
                          maxLines: 5,
                          style: TextStyle(
                            fontSize: 10,
                            color: secondaryColor,
                          ),
                        ),
                        SizedBox(height: 5),
                        RoundedButton(
                          text: "Read",
                          verticalPadding: 10,
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.favorite_border),
                        onPressed: () {},
                      ),
                      BookRating(score: 4.9)
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        Image.asset(
          "assets/images/book-1.png",
          height: 200,
        )
      ],
    );
  }
}
