import 'package:covid/data/item.dart';
import 'package:covid/data/local_data.dart';
import 'package:covid/utils.dart';
import 'package:covid/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:covid/app_routes.dart';

class ShoppingBasketPage extends StatefulWidget {
  @override
  State<ShoppingBasketPage> createState() => _ShoppingBasketPageState();
}

class _ShoppingBasketPageState extends State<ShoppingBasketPage> {
  List<Item> items;
  List<Item> items_selected;

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
                  width: getSizeWidth(context, 3),
                ),
                Container(
                  width: getSizeWidth(context, 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: getSizeHeight(context, 0.7),
                      ),
                      Text(
                        item.name,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        item.available ? "Available" : "Out of Order",
                        style: TextStyle(
                          color: Color(0xff9AD4D6),
                          fontStyle: FontStyle.italic,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
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
                      ),
                    ),
                    Text(
                      "per ${item.measureType}",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xffA19C9C),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: getSizeWidth(context, 4),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      item.units == 0 ? "0" : "${item.units}",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff9AD4D6),
                      ),
                    ),
                    Row(
                      children: <Widget>[
//                        IconButton(icon: ,)
                        new IconButton(
                          icon: new Icon(
                            Icons.remove_circle_outline,
                            color: Color(0xff564787),
                            size: 20.0,
                          ),
                          onPressed: () {
                            if (item.units > 0) {
                              item.units--;
                              setState(() {
                                items_selected.remove(item);
                              });
                            }
                          },
                        ),
                        new IconButton(
                          icon: new Icon(
                            Icons.add_circle_outline,
                            color: Color(0xff564787),
                            size: 20.0,
                          ),
                          onPressed: () {
                            item.units++;
                            setState(() {
                              items_selected.add(item);
                            });
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
    items_selected = LocalData.instance.basket_selected;

    return SafeArea(
      child: Scaffold(
        appBar: MyCustomAppBar(title: "Supermarket X", height: 90),
        body: _buildBody(context),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: items_selected.isEmpty ? (){} : () {
            Navigator.pushNamed(context, AppRoutes.pickupSelection);
          },
          backgroundColor: items_selected.isEmpty? Color(0x55564787) : Color(0xff564787),
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
      ),
    );
  }
}
