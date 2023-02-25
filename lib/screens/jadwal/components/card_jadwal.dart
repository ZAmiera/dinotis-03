// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dinotis/components/detail_button.dart';
import 'package:dinotis/constants.dart';
import 'package:dinotis/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CardJadwal extends StatelessWidget {
  const CardJadwal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(100),
                  child: AspectRatio(
                    aspectRatio: 0.88,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset("assets/images/makup.png"),
                    ),
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(12),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Beauty tren Make up 2023",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          "Damian Laurent",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SvgPicture.asset("assets/icons/verify.svg"),
                      ],
                    ),
                    Row(
                      children: [
                        // SvgPicture.asset("assets/icons/kalender.svg"),
                        Text(
                          "Senin, 12 Juli 2021",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        // SvgPicture.asset("assets/icons/kalender.svg"),
                        Text(
                          "10.00 - 12.00",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 2,
              width: double.infinity,
              color: Colors.grey[300],
              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                SvgPicture.asset("assets/icons/profile.svg"),
                Text(
                  "123/200 Peserta",
                  style: TextStyle(
                    color: Color(0xFFF97316),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 130,
                ),
                // button lihat detail
                Container(
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: DetailButton(
                    text: "Join",
                    press: () => Navigator.pushNamed(context, "/group_call"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
          ],
        ),
      ),
    );
  }
}
