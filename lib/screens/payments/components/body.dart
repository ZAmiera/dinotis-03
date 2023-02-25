// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:dinotis/components/default_button.dart';
import 'package:dinotis/components/error_button.dart';
import 'package:dinotis/screens/transaction_success/transaction_success_screen.dart';
import 'package:dinotis/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                padding: EdgeInsets.only(left: 10, top: 70),
              ),
              IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.black,
                onPressed: () => Navigator.pop(context),
              ),
              Text(
                "Pembayaran",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(20)),
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: getProportionateScreenWidth(10),
                        horizontal: getProportionateScreenWidth(20)),
                  ),
                  Text(
                    "Reza Gamaliel",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  //verifikasi svg
                  SvgPicture.asset("assets/icons/verify.svg"),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20)),
                  ),
                  Text(
                    "Konsultan IT",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(20)),
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20)),
                  ),
                  Text(
                    "Sukses berkarir di bidang IT",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20)),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset("assets/icons/kalender.svg"),
                      SizedBox(width: getProportionateScreenWidth(10)),
                      Text(
                        "Sabtu, 25 Februari 2022",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20)),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset("assets/icons/jam.svg"),
                      SizedBox(width: getProportionateScreenWidth(10)),
                      Text(
                        "09.00 - 12.00 WIB",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20)),
                  ),
                  SvgPicture.asset("assets/icons/koin.svg"),
                  Text(
                    "Poin Ditukarkan",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),  
                  SizedBox(width: getProportionateScreenWidth(90)),
                  Radio(
                        value: 0,
                        groupValue: 1,
                        onChanged: (value) {},
                      ),   
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              
              //metode pembayaran
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20)),
                  ),
                  SvgPicture.asset("assets/icons/metode.svg"),
                  Text(
                    "Metode Pembayaran",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  //radio button
                ],
              ),
              //radio button 
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20)),
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 0,
                        groupValue: 1,
                        onChanged: (value) {},
                      ),
                      Text(
                        "Dana",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: getProportionateScreenWidth(20)),
                  Row(
                    children: [
                      Radio(
                        value: 0,
                        groupValue: 1,
                        onChanged: (value) {},
                      ),
                      Text(
                        "OVO",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: getProportionateScreenWidth(20)),
                  Row(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: 1,
                        onChanged: (value) {},
                      ),
                      Text(
                        "Gopay",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              // Rincian Pembayaran
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20)),
                  ),
                  SvgPicture.asset("assets/icons/kertas.svg"),
                  Text(
                    "Rincian Pembayaran",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(5)),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20)),
                  ),
                  Text(
                    "Booking Kelas",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: getProportionateScreenWidth(100)),
                  Text(
                    "Rp. 35.000",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20)),
                  ),
                  Text(
                    "Biaya Administasi",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: getProportionateScreenWidth(75)),
                  Text(
                    "Rp. 1.000",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              //poin akan ditukarkan 
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20)),
                  ),
                  
                  Text(
                    "Poin Akan Ditukarkan",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: getProportionateScreenWidth(50)),
                  Text(
                    "Rp. 0",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              // garis
              Container(
                color: Colors.black12,
                height: 2,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20)),
                  ),
                  Text(
                    "Total Pembayaran",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: getProportionateScreenWidth(46)),
                  Text(
                    "Rp. 36.000",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              // kata-kata dibawah total pembayaran 
              SizedBox(height: getProportionateScreenHeight(10)),
              // kata-kata dibawah total pembayaran
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20)),
                  ),
                  Text(
                    "Setelah anda melakukan pembayaran silahkan tunggu\nkonfirmasi dari admin", 
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(80)),
              // tombol
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20)),
                  ),
                  Container(
                    width: 150,
                    height: 50,
                    //button warna merah
                    child: ErrorButton(
                      text: "Batal",
                      press: () => Navigator.pop(context),
                    ),
                  ),
                  SizedBox(width: getProportionateScreenWidth(20)),
                  Container(
                    width: 150,
                    height: 50,
                    child: DefaultButton(
                      text: "Bayar",
                      press: () {
                        Navigator.pushNamed(context, TransactionSuccess.routeName);
                      },
                    ),
                  ),
                ],
              ),
              
            ], 
          ),
        ),
      ],
    );
  }
}
