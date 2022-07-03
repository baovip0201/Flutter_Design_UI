import 'package:design_ui/constants.dart';
import 'package:flutter/material.dart';

import 'icon_card.dart';
class ImageAndIconCard extends StatelessWidget {
  const ImageAndIconCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 2),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      padding:
                          EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      icon: Icon(Icons.back_hand),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Spacer(),
                  IconCard(
                    icon: Icon(
                      Icons.sunny,
                      color: kPrimaryColor,
                      size: 40,
                    ),
                  ),
                  IconCard(
                    icon: Icon(
                      Icons.temple_buddhist,
                      color: kPrimaryColor,
                      size: 40,
                    ),
                  ),
                  IconCard(
                    icon: Icon(
                      Icons.holiday_village,
                      color: kPrimaryColor,
                      size: 40,
                    ),
                  ),
                  IconCard(
                    icon: Icon(
                      Icons.dangerous,
                      color: kPrimaryColor,
                      size: 40,
                    ),
                  )
                ],
              ),
            )),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(63),
                      bottomLeft: Radius.circular(63)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 60,
                        color: kPrimaryColor.withOpacity(0.29)),
                  ],
                  image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      image: AssetImage("assets/images/img.png"),
                      fit: BoxFit.cover)),
            )
          ],
        ),
      ),
    );
  }
}
