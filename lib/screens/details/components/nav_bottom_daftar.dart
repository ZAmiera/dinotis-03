// ignore_for_file: prefer_const_constructors

import 'package:dinotis/components/default_button.dart';
import 'package:dinotis/screens/chat/messeges/message_screen.dart';
import 'package:dinotis/screens/details/components/top_rounded_container.dart';
import 'package:dinotis/screens/payments/payments_screen.dart';
import 'package:dinotis/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBottomDaftar extends StatelessWidget {
  const NavBottomDaftar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TopRoundedContainer(
      color: Colors.white,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(
              left: getProportionateScreenWidth(20),
              right: getProportionateScreenWidth(20),
            ),
            width: getProportionateScreenWidth(64),
            height: getProportionateScreenWidth(64),
            decoration: BoxDecoration(
              color: Color(0xFFF5F6F9),
              borderRadius: BorderRadius.circular(20),
            ),
            child: IconButton(
              onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => MessagesScreen())),
              icon: SvgPicture.asset("assets/icons/chat.svg"),
            ),
          ),
          
          Expanded(
            child: SizedBox(
              height: getProportionateScreenWidth(56),
              child: DefaultButton(
                text: "Booking Sekarang",
                press: () => Navigator.push(context, MaterialPageRoute(builder:(context) => PaymentScreen())),
              ),
            ),
          ),
          Container(
             margin: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(10),
            ),
          )
        ],
      ),
    );
  }
}
