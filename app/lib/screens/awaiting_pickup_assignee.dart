import 'package:covid/app_routes.dart';
import 'package:covid/utils.dart';
import 'package:covid/utils/const_variables.dart';
import 'package:covid/widgets/appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:covid/data/local_data.dart';
import 'package:covid/data/item.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../utils.dart';
import '../utils.dart';
import '../utils.dart';
import '../utils.dart';
import '../utils.dart';

class AwaitPickAss extends StatefulWidget {
  @override
  State<AwaitPickAss> createState() => _AwaitPickAssState();
}

class _AwaitPickAssState extends State<AwaitPickAss> {
  bool pushedNext = false;

  @override
  void initState() {
    super.initState();
  }

  Future<void> nextScreen() async {
    if (pushedNext == false) {
      await new Future.delayed(const Duration(seconds: 5));
      Navigator.pushNamed(context, AppRoutes.pickupPerAss);
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
    List<Item> items;
    items = LocalData.instance.basket;

    return ListView(
      padding: EdgeInsets.symmetric(horizontal: getSizeWidth(context, 6)),
      children: <Widget>[
        SizedBox(
          height: getSizeHeight(context, 7.2),
        ),
        Container(
          width: getSizeWidth(context, 60),
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Expanded(
                              child: new Padding(
                                  padding: new EdgeInsets.only(
                                      left: getSizeWidth(context, 1),
                                      right: getSizeWidth(context, 2)),
                                  child: new Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          alignment: Alignment(0, 0),
                                          width: getSizeWidth(context, 45),
                                          child: new RichText(
                                              textAlign: TextAlign.left,
                                              text: new TextSpan(children: [
                                                new TextSpan(
                                                    style: const TextStyle(
                                                        color: purpleButtonActive,
                                                        fontWeight: FontWeight.w500,
                                                        fontStyle: FontStyle.normal,
                                                        fontSize: 24.0),
                                                    text:
                                                    "Order "),
                                                new TextSpan(
                                                    style: const TextStyle(
                                                        color: purpleButtonActive,
                                                        fontWeight: FontWeight.w500,
                                                        fontStyle: FontStyle.normal,
                                                        decoration: TextDecoration
                                                            .underline,
                                                        fontSize: 24.0),
                                                    text: "# 4587"),
                                              ])),
                                        ),
                                      ]))),
                        ]),
                    SizedBox(
                      height: getSizeHeight(context, 1),
                    ),
                    Container(
                        width: getSizeWidth(context, 75),
                        alignment: Alignment(0, 0),
                        padding: EdgeInsets.all(4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                        SpinKitPumpingHeart(
                        color: Colors.black,
                          size: 25.0),
//                            new Icon(
//                              Icons.hourglass_empty,
//                              color: Colors.black,
//                              size: 25.0,
//                            ),
                            new Expanded(
                                child: new Padding(
                                    padding: new EdgeInsets.only(
                                        left: getSizeWidth(context, 3),
                                        right: getSizeWidth(context, 5)),
                                    child: new Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            alignment: Alignment(-1, -1),
                                            child: Text(
                                              "Awaiting assigned pickup",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 18),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ]))),
                          ],
                        )),
                    SizedBox(
                      height: getSizeHeight(context, 1),
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
    nextScreen();
    return SafeArea(
      child: new Scaffold(
        appBar: MyCustomAppBar(height: 90),
        body: _buildBody(context),
      ),
    );
  }
}
