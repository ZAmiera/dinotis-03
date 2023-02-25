// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'components/body.dart';

class TransactionSuccess extends StatelessWidget {
  const TransactionSuccess({super.key});
  static String routeName = "/transaction_success";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login Success",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Onboarding-bg.png"),
            fit: BoxFit.cover,
          ),
        ),

        child: Body()),
    );
  }
}
