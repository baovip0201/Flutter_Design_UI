import 'package:design_ui/constants.dart';
import 'package:flutter/material.dart';
class IconCard extends StatelessWidget {
  const IconCard({
    Key? key, this.icon,
  }) : super(key: key);
  final Icon? icon;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      padding: EdgeInsets.all(kDefaultPadding / 2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 15),
                blurRadius: 22,
                color: kPrimaryColor.withOpacity(0.22)),
            BoxShadow(
                offset: Offset(-15, -15), blurRadius: 20, color: Colors.white)
          ]),
      child: icon,
    );
  }
}
