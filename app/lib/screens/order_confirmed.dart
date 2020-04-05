import 'package:covid/app_routes.dart';
import 'package:covid/data/item.dart';
import 'package:covid/data/local_data.dart';
import 'package:covid/utils.dart';
import 'package:covid/utils/const_variables.dart';
import 'package:covid/widgets/appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils.dart';

class OrderConfirmed extends StatefulWidget {
  @override
  State<OrderConfirmed> createState() => _OrderConfirmedState();
}

class _OrderConfirmedState extends State<OrderConfirmed> {
  bool pushedNext = false;

  @override
  void initState() {
    super.initState();
  }

  Future<void> nextScreen() async {
    if (pushedNext == false) {
      await new Future.delayed(const Duration(seconds: 3));
      Navigator.pushNamed(context, AppRoutes.awaitPickAss);
      pushedNext = true;
      setState(() {});
    }
  }

  String sum(List<Item> items) {
    double sum = 0;
    for (var item in items) {
      sum = sum + item.price;
    }
    return sum.toStringAsFixed(2) + "€";
  }

  Widget _buildBody(BuildContext context) {
    nextScreen();
    List<Item> items;
    items = LocalData.instance.basket;

    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: getSizeWidth(context, 6),
      ),
      children: <Widget>[
        SizedBox(
          height: getSizeHeight(context, 2),
        ),
        Container(
          width: getSizeWidth(context, 50),
          child: new DecoratedBox(
            decoration: new BoxDecoration(
              color: Color(0xffDBCBD8),
              borderRadius: new BorderRadius.all(new Radius.circular(6.0)),
              boxShadow: [
                new BoxShadow(
                    color: Colors.black54,
//                  offset: new Offset(1.0, 2.0),
                    blurRadius: 1.0)
              ],
            ),
            child: Container(
              padding: EdgeInsets.only(
                top: getSizeHeight(context, 2.2),
                bottom: getSizeHeight(context, 2.2),
              ),
              child: Padding(
                padding: EdgeInsets.only(
//                  left: getSizeWidth(context, 4.7),
                  right: getSizeWidth(context, 4.2),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(
                      height: getSizeHeight(context, 10),
                    ),
                    new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Expanded(
                              child: new Padding(
                                  padding: new EdgeInsets.only(
                                      left: getSizeWidth(context, 1),
                                      right: getSizeWidth(context, 2)),
                                  child: new Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          alignment: Alignment(0, 0),
                                          width: getSizeWidth(context, 50),
                                          child: new RichText(
                                              textAlign: TextAlign.center,
                                              text: new TextSpan(children: [
                                                new TextSpan(
                                                    style: const TextStyle(
                                                        color:
                                                            purpleButtonActive,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontFamily:
                                                            "Core Sans G",
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize: 24.0),
                                                    text:
                                                        "Your order has been confirmed! Your order number is "),
                                                new TextSpan(
                                                    style: const TextStyle(
                                                        color:
                                                            purpleButtonActive,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontFamily:
                                                            "Core Sans G",
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                        fontSize: 24.0),
                                                    text: "4587"),
                                              ])),
                                        ),
                                      ]))),
                        ]),
                    SizedBox(
                      height: getSizeHeight(context, 10),
                    ),
                    Container(
                        width: getSizeWidth(context, 70),
                        color: Colors.white,
                        alignment: Alignment(-1, -1),
                        padding: EdgeInsets.all(4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Expanded(
                                child: new Padding(
                                    padding: new EdgeInsets.only(
                                        left: getSizeWidth(context, 5),
                                        right: getSizeWidth(context, 5),
                                        top: getSizeHeight(context, 5),
                                        bottom: getSizeHeight(context, 5)),
                                    child: new Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            alignment: Alignment(-1, -1),
                                            child: Text(
                                              "You will be notified when someone can confirm picking up your order",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 18),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ]))),
                          ],
                        )),
                    SizedBox(
                      height: getSizeHeight(context, 20),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: new Scaffold(
        appBar: MyCustomAppBar(title: "Supermarket X", height: 90),
        body: _buildBody(context),
      ),
    );
  }
}
