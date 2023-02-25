// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import, duplicate_import

import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class ErrorButton extends StatelessWidget {
  const ErrorButton({
    super.key, required this.text, this.press,
  });
  final String text;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     width: double.infinity,
     height: getProportionateScreenHeight(56),
      child: ElevatedButton(
       style: ElevatedButton.styleFrom(
         backgroundColor:  Color(0xFFF03738),
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(20),
           ),
           
         ),
       onPressed: press, 
       child: Text(
        text, 
       style: TextStyle(
         color: Colors.white,
         fontSize: getProportionateScreenWidth(18),
         ),
         ),
         
       ),
    );
  }
}