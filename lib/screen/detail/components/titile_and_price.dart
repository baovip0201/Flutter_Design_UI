import 'package:design_ui/constants.dart';
import 'package:flutter/material.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key? key,
    this.title,
    this.country,
    this.price,
  }) : super(key: key);

  final String? title, country;
  final int? price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: title,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: kTextColor)),
            TextSpan(
                text: country,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: kPrimaryColor))
          ])),
          Spacer(),
          Text(
            "\$$price",
            style: TextStyle(
                fontSize: 27,
                color: kPrimaryColor,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
