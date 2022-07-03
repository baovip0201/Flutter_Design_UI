import 'package:design_ui/constants.dart';
import 'package:flutter/material.dart';

class BuyAndDes extends StatelessWidget {
  const BuyAndDes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: size.width / 2,
          height: 84,
          child: FlatButton(
            child: Text(
              "Buy Now",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            onPressed: () {},
            color: kPrimaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topRight: Radius.circular(20))),
          ),
        ),
        Expanded(
            child: FlatButton(
          child: Text(
            "Descripton",
            style: TextStyle(fontSize: 16),
          ),
          onPressed: () {},
        ))
      ],
    );
  }
}
