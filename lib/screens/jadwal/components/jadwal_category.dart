// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:dinotis/constants.dart';
import 'package:flutter/material.dart';

class JadwalCategory extends StatelessWidget {
  const JadwalCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Flexible(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFEBECF7),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      "Akan Datang",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Flexible(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      "Telah Selesai",
                      style: TextStyle(
                        color: Color(0xFFABABAB),
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
