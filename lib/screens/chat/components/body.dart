// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:dinotis/constants.dart';
import 'package:dinotis/models/Chat.dart';
import 'package:dinotis/screens/chat/components/chat_card.dart';
import 'package:dinotis/screens/chat/messeges/message_screen.dart';
import 'package:dinotis/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      SizedBox(height: getProportionateScreenHeight(20)),
        Container(
         color: Colors.white,
         child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 10,
                  top: 70
                  ),
                  ),
              IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.black,
                onPressed: () => Navigator.pop(context),
              ),
              Text(
                "Chats",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
         ) ,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length ,
            itemBuilder: (context, index) => 
            ChatCard(
              chat: chatsData[index],
              press: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => MessagesScreen())),
            ),
            )
          )
        
      ],
    );
  }
}

