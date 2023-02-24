// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dinotis/constants.dart';
import 'package:dinotis/models/ChatMessage.dart';
import 'package:dinotis/screens/chat/messeges/components/chat_input_field.dart';
import 'package:dinotis/screens/chat/messeges/components/message.dart';
import 'package:dinotis/screens/chat/messeges/components/text_message.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

 @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
       Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: ListView.builder(
            itemCount: demeChatMessages.length,
            itemBuilder: (context, index) => 
            Message(message: demeChatMessages[index],)
            ),
        ),
        ),
        
        ChatInputField(),
      ],
    );
  }
}


