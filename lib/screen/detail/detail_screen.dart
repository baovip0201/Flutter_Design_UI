import 'package:design_ui/screen/detail/components/body.dart';
import 'package:flutter/material.dart';
class DetailScreen extends StatelessWidget {
  const DetailScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}