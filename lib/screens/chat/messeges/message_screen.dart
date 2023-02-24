// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dinotis/constants.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title:Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/user_2.png"),
          ),
          SizedBox(width: kDefaultPadding * 0.75),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Angelina Jolie", style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  ),
                ),
             Text("Active 3m ago", style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  ),
                ),
            ],
          ),
      ],
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.videocam),
          onPressed: (){},
        ),
        IconButton(
          icon: Icon(Icons.call),
          onPressed: (){},
        ),
        SizedBox(width: kDefaultPadding / 2),
      ],
    );
  }
}