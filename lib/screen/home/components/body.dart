import 'package:design_ui/constants.dart';
import 'package:flutter/material.dart';

import 'featured_plant.dart';
import 'header_with_searchbox.dart';
import 'recommend_plant.dart';
import 'title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recommended"),
          RecommendPlant(),
          TitleWithMoreBtn(
            title: "Featured Plant",
          ),
          FeaturedPlant(),
          SizedBox(height: kDefaultPadding,)
          
        ],
      ),
    );
  }
}

