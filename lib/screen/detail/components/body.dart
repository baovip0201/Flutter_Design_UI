import 'package:design_ui/constants.dart';
import 'package:flutter/material.dart';

import 'buy_and_des.dart';
import 'icon_card.dart';
import 'image_and_icons_card.dart';
import 'titile_and_price.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIconCard(),
          TitleAndPrice(
            title: "Hoai Bao\n",
            country: "Vietnam",
            price: 400,
          ),
          BuyAndDes()
        ],
      ),
    );
  }
}
