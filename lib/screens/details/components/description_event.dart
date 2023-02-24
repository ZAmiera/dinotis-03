// ignore_for_file: prefer_const_constructors

import 'package:dinotis/components/default_button.dart';
import 'package:dinotis/screens/details/components/nav_bottom_daftar.dart';
import 'package:dinotis/screens/details/components/top_rounded_container.dart';
import 'package:dinotis/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DescriptionEvent extends StatelessWidget {
  const DescriptionEvent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TopRoundedContainer(
        color: Color(0xFFF6F7F9),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenHeight(22),
                  ),
                  child: Text(
                    "Cara awal memulai belajar\nbahasa pemograman",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenHeight(22),
                    vertical: getProportionateScreenHeight(5)
                  ),
                  child: Text(
                    "Group video call bersama kak Reza tips mudah belajar pemograman",
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenHeight(22),
                        vertical: getProportionateScreenHeight(5)
                      ),
                      child: SvgPicture.asset("assets/icons/kalender.svg"),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenHeight(2),
                        vertical: getProportionateScreenHeight(5)
                      ),
                      child: Text(
                        "Kamis, 23 Februari 2021",
                        style: TextStyle(
                           color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenHeight(22),
                        vertical: getProportionateScreenHeight(5)
                      ),
                      child: SvgPicture.asset("assets/icons/jam.svg"),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenHeight(2),
                        vertical: getProportionateScreenHeight(5)
                      ),
                      child: Text(
                        "20:00 - 21:00 WIB",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenHeight(22),
                        vertical: getProportionateScreenHeight(5)
                      ),
                      child: SvgPicture.asset("assets/icons/peseta.svg"),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenHeight(2),
                        vertical: getProportionateScreenHeight(5)
                      ),
                      child: Text(
                        "13/300 Peserta",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenHeight(22),
                        vertical: getProportionateScreenHeight(5)
                      ),
                      child: SvgPicture.asset("assets/icons/coins.svg"),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenHeight(2),
                        vertical: getProportionateScreenHeight(5)
                      ),
                      child: Text(
                        "35.000/Orang",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // ColorDots(product: product),
            NavBottomDaftar(),
          ],
        ),
      ),
    );
  }
}

