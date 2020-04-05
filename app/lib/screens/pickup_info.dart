import 'package:covid/data/item.dart';
import 'package:covid/data/local_data.dart';
import 'package:covid/utils.dart';
import 'package:covid/utils/const_variables.dart';
import 'package:covid/widgets/appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../utils.dart';

class PickupInfoPage extends StatefulWidget {
  @override
  State<PickupInfoPage> createState() => _PickupInfoPageState();
}

class _PickupInfoPageState extends State<PickupInfoPage> {
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
          height: getSizeHeight(context, 5.2),
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
                                              "Yay! Pickup assigned!",
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
                                child: Image.asset("assets/guy_old.png",
                                    fit: BoxFit.fill),
                              ),
                            ),
//                        SpinKitPumpingHeart(
//                        color: Colors.black,
//                          size: 85.0),
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
                                                      text: "Tim Jones"),
                                                ])),
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
                        child: Row(
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
                                    left: getSizeWidth(context, 2),
                                    right: getSizeWidth(context, 0),
                                    top: getSizeHeight(context, 5),
                                    bottom: getSizeHeight(context, 5)),
                                child: new Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        QrImage(
                                          data: "1234567890",
                                          version: QrVersions.auto,
                                          size: 100.0,
                                          backgroundColor: Colors.white,
                                          padding: EdgeInsets.all(0.5),
                                        ),
                                        SizedBox(
                                          width: getSizeWidth(context, 4),
                                        ),
                                        SizedBox(
                                          width: getSizeWidth(context, 31),
                                          child: Text(
                                            "You can use the QR to pickup their order and deliver to: Address, Street, XXXXX",
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: getSizeHeight(context, 2),),
                                    Center(child:SizedBox(
                                      height: getSizeHeight(context, 10),
                                      width: getSizeWidth(context, 45),
                                      child: FlatButton(
                                        color: purpleButtonNonActive,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: new BorderRadius.circular(12.0),
                                            side: BorderSide(color: Colors.purple)),
                                        child: Text("Use a safe route for pickup",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              fontFamily: "Core Sans G",
                                              color: turquoiseLightButton,
                                            )),
                                        onPressed: () {
                                          print("order more");
                                        },
                                      ),
                                    ),),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: getSizeHeight(context, 8),
                    ),

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
        appBar: MyCustomAppBar(title: "Supermarket X", height: 90),
        body: _buildBody(context),
      ),
    );
  }
}
