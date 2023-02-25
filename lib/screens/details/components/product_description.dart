// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:dinotis/data/controller/creators_controller.dart';
import 'package:dinotis/models/Product.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProductDescription extends StatelessWidget {
  ProductDescription({
    Key? key,
    required this.product,
    this.pressOnSeeMore,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback? pressOnSeeMore;
  final CreatorController _creatorController = CreatorController(Dio());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Text(
            product.title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: FutureBuilder<dynamic>(
            future: _creatorController
                .getCreators("0aa3a0b0f144f7eab725cc88b77fbdef"),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.connectionState == ConnectionState.done) {
                  

                  // DateTime start = snapshot.data.creator.meetings.startAt;
                  // DateTime end = snapshot.data.creator.meetings.endAt;

                  // DateFormat startTime = DateFormat("HH:mm");
                  // DateFormat endTime = DateFormat("HH:mm");

                  // startTime.format(start);
                  // endTime.format(end);

                  // print(startTime.toString());

                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(20),
                          vertical: getProportionateScreenWidth(15),
                        ),
                        child: Row(
                          children: [
                            Text(snapshot.data.creator.name.toString()),
                            SizedBox(width: 5),
                            SvgPicture.asset("assets/icons/verify.svg"),
                          ],
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.all(getProportionateScreenWidth(15)),
                        width: getProportionateScreenWidth(64),
                        decoration: BoxDecoration(
                          color: product.isFavourite
                              ? Color(0xFFFFE6E6)
                              : Color(0xFFF5F6F9),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/share.svg",
                          color: product.isFavourite
                              ? Color(0xFFFF4848)
                              : Color(0xFFDBDEE4),
                          height: getProportionateScreenWidth(16),
                          width: getProportionateScreenHeight(20),
                        ),
                      ),
                    ],
                  );
                } else {
                  return Container(); // nampilin apa kalo kosong
                }
              } else {
                return Container(); // nampilin apa kalo kosong
              }
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(64),
          ),
          child: Text(
            product.description,
            maxLines: 3,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: 10,
          ),
          child: GestureDetector(
            onTap: () {},
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "See More Detail",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: kPrimaryColor),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: kPrimaryColor,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
