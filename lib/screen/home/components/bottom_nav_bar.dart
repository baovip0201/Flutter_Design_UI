import 'package:design_ui/constants.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: kDefaultPadding * 2,
          right: kDefaultPadding * 2,
          bottom: kDefaultPadding/2),
      height: 80,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38)),
      ]),
      child:
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: kPrimaryColor,
              size: 35,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.access_time,
              color: kPrimaryColor,
              size: 35,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person,
              color: kPrimaryColor,
              size: 35,
            ))
      ]),
    );
  }
}
