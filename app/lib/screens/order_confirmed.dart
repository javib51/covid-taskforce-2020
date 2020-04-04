import 'package:covid/utils.dart';
import 'package:covid/utils/const_variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:covid/data/local_data.dart';
import 'package:covid/data/item.dart';

import '../utils.dart';
import '../utils.dart';

class OrderConfirmed extends StatefulWidget {
  @override
  State<OrderConfirmed> createState() => _OrderConfirmedState();
}

class _OrderConfirmedState extends State<OrderConfirmed> {
  @override
  void initState() {
    super.initState();
  }

  String sum(List<Item> items) {
    double sum = 0;
    for (var item in items) {
      sum = sum + item.price;
    }
    return sum.toStringAsFixed(2) + "€";
  }

  Widget _buildBody(BuildContext context) {
    List<Item> items;
    items = LocalData.instance.basket;

    return ListView(
      padding: EdgeInsets.symmetric(horizontal: getSizeWidth(context, 6)),
      children: <Widget>[
        SizedBox(
          height: getSizeHeight(context, 7.2),
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
                      height: getSizeHeight(context, 1),
                    ),
    new Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      new Expanded(
          child: new Padding(
              padding: new EdgeInsets.only(
                  left: getSizeWidth(context, 1),
                  right: getSizeWidth(context, 2)),
              child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      alignment: Alignment(-1, -1),
                      child: Text(
                        "If you are at risk, please consider getting a pickup instead of picking up the order yourself",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Core Sans G",
                            fontStyle: FontStyle.normal,
                            fontSize: 10),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ]))),
      ]),
//                    child: new RichText(
//                        text: new TextSpan(children: [
//                          new TextSpan(
//                              style: const TextStyle(
//                                  color: logo_blue,
//                                  fontWeight: FontWeight.w300,
//                                  fontFamily: "Roboto",
//                                  fontStyle: FontStyle.normal,
//                                  fontSize: 13.0),
//                              text: _getRentalPeriod() + ", "),
//                          new TextSpan(
//                              style: const TextStyle(
//                                  color: logo_orange,
//                                  fontWeight: FontWeight.w300,
//                                  fontFamily: "Roboto",
//                                  fontStyle: FontStyle.normal,
//                                  fontSize: 12.0),
//                              text: _getRentalPrice()),
//                        ])),
                    Text(
                      "Shopping List",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff564787),
                        fontSize: 24,
                        fontFamily: "Core Sans G",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: getSizeHeight(context, 5),
                    ),
                    Container(
                      width: getSizeWidth(context, 70),
                      alignment: Alignment(-1, -1),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          ...items
                              .map((item) => Text(
                            item.name,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: "Core Sans G",
                              fontWeight: FontWeight.w500,
                            ),
                          ))
                              .toList()
                        ],
                      ),
                    ),
                    SizedBox(
                      height: getSizeHeight(context, 5),
                    ),
                    Container(
                      width: getSizeWidth(context, 70),
                      alignment: Alignment(-1, -1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Total:",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: "Core Sans G",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: getSizeHeight(context, 5),
                          ),
                          Text(
                            sum(items),
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: "Core Sans G",
                              fontWeight: FontWeight.w800,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: getSizeHeight(context, 5),
                    ),
                    Container(
                      width: getSizeWidth(context, 70),
                      alignment: Alignment(0, 0),
                      child: Text(
                        "Please select your pickup preference:",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: "Core Sans G",
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getSizeHeight(context, 5),
                    ),
                    Container(
                        width: getSizeWidth(context, 70),
                        alignment: Alignment(0, 0),
                        child: SizedBox(
                            width: getSizeWidth(context, 60),
                            child: MaterialButton(
                                onPressed: () {},
                                height: getSizeHeight(context, 8),
                                splashColor: Color(0xff67A8AA),
                                color: turquoiseDarkButton,
                                elevation: 8,
                                highlightElevation: 2,
                                padding: EdgeInsets.all(0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                child: Container(
                                  child: Text(
                                    "I will pick up my order",
                                    style: TextStyle(
                                        color: const Color(0xffffffff),
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "SF Pro Display",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 15),
                                    textAlign: TextAlign.center,
                                  ),
                                )))),
                    SizedBox(
                      height: getSizeHeight(context, 1),
                    ),
                    Container(
                        width: getSizeWidth(context, 70),
                        alignment: Alignment(0, 0),
                        child: SizedBox(
                            width: getSizeWidth(context, 60),
                            child: MaterialButton(
                                onPressed: () {},
                                height: getSizeHeight(context, 8),
                                splashColor: Color(0xff67A8AA),
                                color: turquoiseDarkButton,
                                elevation: 8,
                                highlightElevation: 2,
                                padding: EdgeInsets.all(0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                child: Container(
                                  child: Text(
                                    "I need a pickup",
                                    style: TextStyle(
                                        color: const Color(0xffffffff),
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "SF Pro Display",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 15),
                                    textAlign: TextAlign.center,
                                  ),
                                )))),
                    SizedBox(
                      height: getSizeHeight(context, 2),
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
                            new Icon(
                              Icons.error_outline,
                              color: Colors.black,
                              size: 25.0,
                            ),
                            new Expanded(
                                child: new Padding(
                                    padding: new EdgeInsets.only(
                                        left: getSizeWidth(context, 1),
                                        right: getSizeWidth(context, 2)),
                                    child: new Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            alignment: Alignment(-1, -1),
                                            child: Text(
                                              "If you are at risk, please consider getting a pickup instead of picking up the order yourself",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Core Sans G",
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 10),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ]))),
                          ],
                        )),
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
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
          title: Text(
            "Community",
            style: TextStyle(
              color: Color(0xff9AD4D6),
              fontSize: 24,
              fontFamily: "Core Sans G",
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: _buildBody(context),
      ),
    );
  }
}
