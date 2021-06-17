import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sqlite/riwayat_beli.dart';
import 'package:flutter_sqlite/detailproduk.dart';
import 'package:flutter_sqlite/login/formlogin.dart';
import 'package:flutter_sqlite/login/login_page.dart';
import 'package:flutter_sqlite/login/inputlogin.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: Colors.black,
            ),
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              icon: Icon(Icons.search),
              hintText: "cari sesuatu",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
        )
      ],
    );
  }
}
