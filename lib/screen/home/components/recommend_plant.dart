import 'package:design_ui/constants.dart';
import 'package:design_ui/screen/detail/detail_screen.dart';
import 'package:flutter/material.dart';

class RecommendPlant extends StatelessWidget {
  const RecommendPlant({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlantCard(
            image: "assets/images/image_1.png",
            price: 400,
            country: "Vietnam",
            title: "Bao",
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(),
                  ));
            },
          ),
          RecommendPlantCard(
            image: "assets/images/image_2.png",
            price: 400,
            country: "Russian",
            title: "Bao",
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(),
                  ));
            },
          ),
          RecommendPlantCard(
            image: "assets/images/image_3.png",
            price: 400,
            country: "Vietnam",
            title: "Bao",
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard({
    Key? key,
    this.image,
    this.country,
    this.title,
    this.price,
    required this.press,
  }) : super(key: key);

  final String? image, country, title;
  final int? price;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(children: [
        Image.asset(image!),
        GestureDetector(
          onTap: press,
          child: Container(
            child: Row(children: [
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "$title\n".toUpperCase(),
                    style: Theme.of(context).textTheme.button),
                TextSpan(
                    text: "$country".toUpperCase(),
                    style: TextStyle(color: kPrimaryColor.withOpacity(0.5))),
              ])),
              Spacer(),
              Text("\$$price",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ))
            ]),
            padding: EdgeInsets.all(kDefaultPadding / 2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23))
                ]),
          ),
        )
      ]),
    );
  }
}
