// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Group Call'),
      ),
      body: Center(
        child: Text('Group Call'),
      ),
    );
  }
}