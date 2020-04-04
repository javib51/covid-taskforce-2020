import 'package:covid/data/item.dart';
import 'package:covid/data/local_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShoppingBasketPage extends StatefulWidget {
  @override
  State<ShoppingBasketPage> createState() => _ShoppingBasketPageState();
}

class _ShoppingBasketPageState extends State<ShoppingBasketPage> {
  List<Item> items;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    items = LocalData.instance.basket;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(FontAwesomeIcons.arrowLeft),
            onPressed: () {
              Navigator.pop(context);
            }),
//        title: Text("Stockholm"),
//        actions: <Widget>[
//          IconButton(
//              icon: Icon(FontAwesomeIcons.search),
//              onPressed: () {
////
//              }),
//        ],
      ),
      body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (BuildContext ctxt, int index) {
            Item item = items[index];
            return Container(
              child: Row(
                children: <Widget>[
                  //photo,
                  Column(
                    children: <Widget>[
                      Text(item.name),
                      Text(item.available ? "Available" : "Out of Order"),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("${item.price}€"),
                      Text("per ${item.measureType}"),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("${item.units}"),
                      Row(children: <Widget>[
//                        IconButton(icon: ,)
                      ],),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
