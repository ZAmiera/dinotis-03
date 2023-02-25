// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:dinotis/components/default_button.dart';
import 'package:dinotis/data/controller/creators_controller.dart';
import 'package:dinotis/models/Product.dart';
import 'package:dinotis/screens/details/components/description_event.dart';
import 'package:dinotis/size_config.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'product_description.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';

class Body extends StatelessWidget {
  final Product product;

  Body({Key? key, required this.product}) : super(key: key);
  final CreatorController _creatorController = CreatorController(Dio());

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
              // Container(
              //   padding: EdgeInsets.symmetric(
              //     horizontal: getProportionateScreenWidth(20),
              //     vertical: 10,
              //   ),

              // ),
              DescriptionEvent(),
            ],
          ),
        ),
      ],
    );
  }
}
