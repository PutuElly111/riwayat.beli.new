import 'package:flutter/material.dart';
import 'package:flutter_sqlite/ui/entryform.dart';
import 'package:flutter_sqlite/ui/entryform.dart';
import 'package:flutter_sqlite/models/contact.dart';

import 'package:flutter_sqlite/ui/home.dart';
import 'detailproduk.dart';

class ProdukList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Katalog"),
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              print('click start');
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('click start');
            },
          ),
          IconButton(
            icon: Icon(Icons.person_sharp),
            onPressed: () {
              print('click start');
            },
          ),
        ],
      ),
    );
  }
}
