// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dinotis/constants.dart';
import 'package:flutter/material.dart';



class ChatInputField extends StatelessWidget {
  const ChatInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding / 5,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 32,
            color: Color.fromARGB(255, 176, 176, 176).withOpacity(0.08),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            Container(width: 12,),
            Icon(
              Icons.mic, 
              color: kPrimaryColor
            ),
            SizedBox(width: kDefaultPadding),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding * 0.10,
                  vertical: kDefaultPadding / 2,
                ),
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    SizedBox(width: kDefaultPadding / 4),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Ketikan Pesan",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    
                    SizedBox(width: kDefaultPadding / 1),
                    Icon(
                      Icons.send,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color!
                          .withOpacity(0.64),
                    ),
                    Container(
                      width: 11,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
