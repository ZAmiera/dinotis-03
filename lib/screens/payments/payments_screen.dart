// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'components/body.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});
  static String routeName = "/payments";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}