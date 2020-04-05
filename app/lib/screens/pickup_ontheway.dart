import 'package:covid/data/item.dart';
import 'package:covid/data/local_data.dart';
import 'package:covid/utils.dart';
import 'package:covid/utils/const_variables.dart';
import 'package:covid/widgets/appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils.dart';

class PickupOnTheWay extends StatefulWidget {
  @override
  State<PickupOnTheWay> createState() => _PickupOnTheWayState();
}

class _PickupOnTheWayState extends State<PickupOnTheWay> {
  @override
  void initState() {
    super.initState();
  }

  bool clicked = false;
  int selected = 0;

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
                                                        color:
                                                            purpleButtonActive,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontFamily:
                                                            "Core Sans G",
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize: 24.0),
                                                    text: "Order "),
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
                            clicked
                                ? new Icon(
                                    Icons.tag_faces,
                                    color: Colors.black,
                                    size: 25.0,
                                  )
                                : Container(),
                            SizedBox(
                              height: getSizeHeight(context, 0.5),
                            ),
                            new Expanded(
                                child: new Padding(
                                    padding: new EdgeInsets.only(
                                        left: getSizeWidth(context, 0),
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
                                              clicked
                                                  ? "Order delivered"
                                                  : "Order picked up!",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: "Core Sans G",
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 18),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ]))),
                          ],
                        )),
                    SizedBox(
                      height: getSizeHeight(context, 8),
                    ),
                    Container(
                        width: getSizeWidth(context, 65),
                        color: Color(0xff9AD4D6),
                        alignment: Alignment(0, 0),
                        padding: EdgeInsets.all(4),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
//                        SpinKitPumpingHeart(
//                        color: Colors.black,
//                          size: 25.0),
//                            new Icon(
//                              Icons.hourglass_empty,
//                              color: Colors.black,
//                              size: 25.0,
//                            ),
                                new Expanded(
                                    child: new Padding(
                                        padding: new EdgeInsets.only(
                                            left: getSizeWidth(context, 0),
                                            right: getSizeWidth(context, 0),
                                            top: getSizeHeight(context, 3),
                                            bottom: getSizeHeight(context, 3)),
                                        child: new Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Container(
                                                alignment: Alignment(0, 0),
                                                child: Text(
                                                  clicked
                                                      ? "Awesome!"
                                                      : "Let us know once you have\n received your order!",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: "Core Sans G",
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      height: 1.8,
                                                      fontSize:
                                                          clicked ? 24 : 14),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ]))),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                MaterialButton(
                                    onPressed: () {
                                      setState(() {
                                        clicked = true;
                                        selected = 1;
                                      });
                                    },
                                    height: getSizeHeight(context, 7),
                                    color: selected == 1
                                        ? Color(0xffC3E7EE)
                                        : Colors.white,
                                    splashColor: Color(0xff67A8AA),
                                    elevation: 8,
                                    highlightElevation: 2,
                                    padding: EdgeInsets.all(0),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Container(
                                      child: Text(
                                        "I got it!",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "SF Pro Display",
                                            fontStyle: FontStyle.normal,
                                            fontSize: 14),
                                        textAlign: TextAlign.center,
                                      ),
                                    )),
                                SizedBox(
                                  width: getSizeWidth(context, 5),
                                ),
                                MaterialButton(
                                    onPressed: () {},
                                    height: getSizeHeight(context, 7),
                                    splashColor: Color(0xff67A8AA),
                                    color: Colors.white,
                                    elevation: 8,
                                    highlightElevation: 2,
                                    padding: EdgeInsets.all(0),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Container(
                                      child: Text(
                                        "Something's\nwrong",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "SF Pro Display",
                                            fontStyle: FontStyle.normal,
                                            fontSize: 15),
                                        textAlign: TextAlign.center,
                                      ),
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: getSizeHeight(context, 2),
                            ),
                          ],
                        )
//                        Row(
//                          mainAxisAlignment: MainAxisAlignment.center,
//                          crossAxisAlignment: CrossAxisAlignment.center,
//                          children: <Widget>[
////                        SpinKitPumpingHeart(
////                        color: Colors.black,
////                          size: 25.0),
////                            new Icon(
////                              Icons.hourglass_empty,
////                              color: Colors.black,
////                              size: 25.0,
////                            ),
//                            new Expanded(
//                                child: new Padding(
//                                    padding: new EdgeInsets.only(
//                                        left: getSizeWidth(context, 0),
//                                        right: getSizeWidth(context, 0),
//                                        top: getSizeHeight(context, 5),
//                                        bottom: getSizeHeight(context, 5)),
//                                    child: new Column(
//                                        mainAxisAlignment:
//                                            MainAxisAlignment.center,
//                                        crossAxisAlignment:
//                                            CrossAxisAlignment.center,
//                                        children: <Widget>[
//                                          Container(
//                                            alignment: Alignment(0, 0),
//                                            child: Text(
//                                              "Let us know once you have\n received your order!",
//                                              style: TextStyle(
//                                                  color: Colors.black,
//                                                  fontWeight: FontWeight.w500,
//                                                  fontFamily: "Core Sans G",
//                                                  fontStyle: FontStyle.normal,
//                                                  height: 1.8,
//                                                  fontSize: 14),
//                                              textAlign: TextAlign.center,
//                                            ),
//                                          ),
//                                        ]))),
//                          ],
//                        )
                        ),
                    SizedBox(
                      height: getSizeHeight(context, 8),
                    ),
                    Container(
                        width: getSizeWidth(context, 75),
                        alignment: Alignment(0, 0),
                        padding: EdgeInsets.all(4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: getSizeWidth(context, 20),
                              width: getSizeWidth(context, 20),
                              child: new DecoratedBox(
                                decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.all(
                                      new Radius.circular(45.0)),
                                ),
                                child: Image.asset("assets/guy_young.png",
                                    fit: BoxFit.fill),
                              ),
                            ),
//                            SpinKitPumpingHeart(
//                                color: Colors.black, size: 85.0),
                            new Expanded(
                                child: new Padding(
                                    padding: new EdgeInsets.only(
                                        left: getSizeWidth(context, 7),
                                        right: getSizeWidth(context, 0)),
                                    child: new Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            alignment: Alignment(-1, -1),
                                            child: new RichText(
                                                textAlign: TextAlign.center,
                                                text: new TextSpan(children: [
                                                  new TextSpan(
                                                      style: const TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontFamily:
                                                              "Core Sans G",
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          fontSize: 14.0),
                                                      text:
                                                          "Your designated pick-up is\n"),
                                                  new TextSpan(
                                                      style: const TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontFamily:
                                                              "Core Sans G",
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          fontSize: 24.0),
                                                      text: "John Smith"),
                                                ])),
                                          ),
                                        ]))),
                          ],
                        )),
//                    Container(
//                      height: getSizeWidth(context, 17),
//                      width: getSizeWidth(context, 17),
//                      child: new DecoratedBox(
//                        decoration: new BoxDecoration(
//                          color: Colors.white,
//                          borderRadius:
//                          new BorderRadius.all(new Radius.circular(10.0)),
//                        ),
//                        child: Image.asset("./assets/images/photo-camera.png",
//                            fit: BoxFit.contain),
//                      ),
//                    ),
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
        appBar: MyCustomAppBar(height: 90),
        body: _buildBody(context),
      ),
    );
  }
}
