// ignore_for_file: prefer_const_constructors

import 'package:dinotis/components/default_button.dart';
import 'package:dinotis/data/controller/creators_controller.dart';
import 'package:dinotis/models/Creator.dart';
import 'package:dinotis/screens/details/components/nav_bottom_daftar.dart';
import 'package:dinotis/screens/details/components/top_rounded_container.dart';
import 'package:dinotis/size_config.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class DescriptionEvent extends StatelessWidget {
  DescriptionEvent({
    super.key,
  });

  final CreatorController _creatorController = CreatorController(Dio());

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<dynamic>(
      future: _creatorController.getCreators("1"),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.connectionState == ConnectionState.done) {
            dynamic meeting = snapshot.data.creator.meetings[
                snapshot.data.creator.meetings.indexWhere((element) =>
                    element.creator.id == snapshot.data.creator.id)];

            DateTime start = meeting.startAt;
            DateTime end = meeting.endAt;
            DateFormat startDate = DateFormat("dd MMMM yyyy");

            DateFormat startTime = DateFormat("HH:mm");
            DateFormat endTime = DateFormat("HH:mm");

            String sd = startDate.format(start);

            String st = startTime.format(start);
            String et = endTime.format(end);
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
                            meeting.title,
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
                              vertical: getProportionateScreenHeight(5)),
                          child: Text(
                            meeting.description,
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: getProportionateScreenHeight(22),
                                  vertical: getProportionateScreenHeight(5)),
                              child:
                                  SvgPicture.asset("assets/icons/kalender.svg"),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: getProportionateScreenHeight(2),
                                  vertical: getProportionateScreenHeight(5)),
                              child: Text(
                                sd.toString(),
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
                                  vertical: getProportionateScreenHeight(5)),
                              child: SvgPicture.asset("assets/icons/jam.svg"),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: getProportionateScreenHeight(2),
                                  vertical: getProportionateScreenHeight(5)),
                              child: Text(
                                "$st - $et WIB",
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
                                  vertical: getProportionateScreenHeight(5)),
                              child:
                                  SvgPicture.asset("assets/icons/peseta.svg"),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: getProportionateScreenHeight(2),
                                  vertical: getProportionateScreenHeight(5)),
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
                                  vertical: getProportionateScreenHeight(5)),
                              child: SvgPicture.asset("assets/icons/coins.svg"),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: getProportionateScreenHeight(2),
                                  vertical: getProportionateScreenHeight(5)),
                              child: Text(
                                "Rp. ${meeting.price.toString()}",
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
          } else {
            return Container();
          }
        } else {
          return Container();
        }
      },
    );
  }
}
