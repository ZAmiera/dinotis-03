// ignore_for_file: prefer_const_constructors

import 'package:dinotis/components/coustom_bottom_nav_bar.dart';
import 'package:dinotis/constants.dart';
import 'package:dinotis/enums.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  static String routeName = "/chat";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.message),
    );
  }
}