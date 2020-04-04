import 'package:covid/data/item.dart';
import 'package:covid/data/local_data.dart';
import 'package:covid/utils.dart';
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

  Widget _buildItems(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: items.length,
        separatorBuilder: (context, index) => Divider(
              color: Color(0xff9AD4D6),
              thickness: 2,
            ),
        itemBuilder: (BuildContext context, int index) {
          Item item = items[index];
          return Container(
            margin: EdgeInsets.only(top: getSizeHeight(context, 2)),
            height: getSizeHeight(context, 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //photo,
                SizedBox(
                  width: getSizeWidth(context, 5),
                ),
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Image.asset(item.photo),
                  radius: 30,
                ),
                SizedBox(
                  width: getSizeWidth(context, 7),
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: getSizeHeight(context, 0.7),
                    ),
                    Text(
                      item.name,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        fontFamily: "Core Sans G",
                      ),
                    ),
                    Text(
                      item.available ? "Available" : "Out of Order",
                      style: TextStyle(
                        color: Color(0xff9AD4D6),
                        fontStyle: FontStyle.italic,
                        fontSize: 12,
                        fontFamily: "Core Sans G",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: getSizeWidth(context, 10),
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: getSizeHeight(context, 0.9),
                    ),
                    Text(
                      "${item.price}€",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff564787),
                        fontFamily: "Core Sans G",
                      ),
                    ),
                    Text(
                      "per ${item.measureType}",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xffA19C9C),
                        fontFamily: "Core Sans G",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: getSizeWidth(context, 12),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      "${item.units}",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff9AD4D6),
                        fontFamily: "Core Sans G",
                      ),
                    ),
                    Row(
                      children: <Widget>[
//                        IconButton(icon: ,)
                        new IconButton(
                          icon: new Image.asset('assets/circle-minus.png'),
                          onPressed: () {
                            if (item.units > 1) {
                              item.units--;
                              setState(() {});
                            }
                          },
                        ),
                        new IconButton(
                          icon: new Image.asset('assets/circle-plus.png'),
                          onPressed: () {
                              item.units++;
                              setState(() {});
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      children: <Widget>[
        Divider(
          color: Color(0xff9AD4D6),
          thickness: 2,
        ),
        _buildItems(context),
        Divider(
          color: Color(0xff9AD4D6),
          thickness: 2,
        )
      ],
    );
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
//          Logo()
//        ],
      ),
      body: _buildBody(context),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print("place an order");
        },
        backgroundColor: Color(0xff564787),
        label: Text(
          "Place an order",
          style: TextStyle(
              fontFamily: "SF Pro Display",
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Color(0xfff2FDFF)),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
