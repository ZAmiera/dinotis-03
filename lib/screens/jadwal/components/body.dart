// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:dinotis/components/default_button.dart';
import 'package:dinotis/components/detail_button.dart';
import 'package:dinotis/constants.dart';
import 'package:dinotis/screens/jadwal/components/card_jadwal.dart';
import 'package:dinotis/screens/jadwal/components/jadwal_category.dart';
import 'package:dinotis/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.white,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 70),
                ),
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.black,
                  onPressed: () => Navigator.pop(context),
                ),
                Text(
                  "Jadwalku",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          JadwalCategory(),
          SizedBox(
            height: getProportionateScreenHeight(5),
          ),
          //card jadwal yang akan datang
          CardJadwal(),
          CardJadwal(),
          CardJadwal(),
          CardJadwal(),
        ],
      ),
    );
  }
}
