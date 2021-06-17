import 'package:flutter/material.dart';
import 'package:flutter_sqlite/riwayat_beli.dart';
import 'package:flutter_sqlite/detailproduk.dart';
import 'package:flutter_sqlite/login/formlogin.dart';
import 'package:flutter_sqlite/login/login_page.dart';
import 'package:flutter_sqlite/login/inputlogin.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //search box
              Container(
                height: 40,
                width: 600,
                margin: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Colors.white,
                  ),
                  color: Colors.white,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.search),
                    hintText: "cari sesuatu",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              //search box
            ],
          ),
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
        body: new ListView(children: <Widget>[
          Container(
            height: 200,
            child: new Carousel(
              boxFit: BoxFit.cover,
              images: [
                AssetImage('assets/promo/dapur.jpg'),
                AssetImage('assets/promo/iklan7.jpeg'),
              ],
              autoplay: false,
              animationCurve: Curves.fastOutSlowIn,
              animationDuration: Duration(milliseconds: 1000),
              dotSize: 4.0,
              indicatorBgPadding: 4.0,
            ),
          ),

          //fitur start
          Container(
            padding: EdgeInsets.only(top: 50, bottom: 20, left: 20, right: 20),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Theme.of(context).dividerColor)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.local_offer, color: Colors.red),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        'Diskon',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.lightbulb, color: Colors.yellow),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        'Ide Baru',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.smartphone, color: Colors.black),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        'Pulsa',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 20, left: 20, right: 20),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Theme.of(context).dividerColor)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.event_note_sharp, color: Colors.blue[700]),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        'Riwayat Pembelian',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.settings, color: Colors.grey[700]),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        'Pengaturan',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.border_all_outlined, color: Colors.purple[900]),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        'Semua',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          //fitur end

          //........//
          //promo start
          Container(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Tawaran Hari Ini',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage("assets/promo/loreal.jpg")),
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          //promo end
          //..........//
          //vocer start
          Container(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Voucher',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage("assets/vocer/orens.jpg")),
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          //vocer end
          //..........//
        ]));
  }
}
