// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


import '../../../constants.dart';
import '../../../size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 90,
      width: double.infinity,
      margin: EdgeInsets.all(getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(70),
      ),
      decoration: BoxDecoration(
        //primary color
        color: Color(0xFF9066D7), 
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage("assets/images/iklan-1.png"),
          fit: BoxFit.cover,
        ),
      ),
      // 
    );
  }
}
