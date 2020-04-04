import 'package:covid/utils.dart';
import 'package:covid/utils/const_variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:covid/data/local_data.dart';
import 'package:covid/data/item.dart';

import '../utils.dart';
import '../utils.dart';

class PlaceSelection extends StatefulWidget {
  @override
  State<PlaceSelection> createState() => _PlaceSelectionState();
}

class _PlaceSelectionState extends State<PlaceSelection> {
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

//        child: new Icon(
//          Icons.cached,
//          color: Colors.white,
//          size: 25.0,
//        ),
//        Text(
//          "Wooho! 🎉",
//          textAlign: TextAlign.center,
//          style: TextStyle(
//            color: Color(0xff2f3f9e),
//            fontSize: 20,
//            fontFamily: "Avenir",
//            fontWeight: FontWeight.w500,
//          ),
//        ),
//        SizedBox(
//          height: getSizeHeight(context, 1),
//        ),
//        Container(
//          width: getSizeWidth(context, 50),
//          child: Text(
//            "You accepted the following Savings challenge:",
//            maxLines: 3,
//            textAlign: TextAlign.center,
//            style: TextStyle(
//              color: Color(0xff2f3f9e),
//              fontSize: 18,
//              fontFamily: "Avenir",
//              fontWeight: FontWeight.w300,
//            ),
//          ),
//        ),
//        SizedBox(
//          height: getSizeHeight(context, 5.9),
//        ),
//        _buildChallenge(context, "Starbucks Purchase",
//            "Save 105€/month by not buying this", "./assets/images/coffee.png"),
//        SizedBox(
//          height: getSizeHeight(context, 3),
//        ),
//        Container(
//          width: getSizeWidth(context, 50),
//          child: new RichText(
//            maxLines: 5,
//            textAlign: TextAlign.center,
//            text: TextSpan(
//              children: <TextSpan>[
//                new TextSpan(
//                  text: 'With each Starbucks Purchase that you do not take, ',
//                  style: TextStyle(
//                    color: Color(0xff2f3f9e),
//                    fontSize: 18,
//                    fontFamily: "Avenir",
//                    fontWeight: FontWeight.w300,
//                  ),
//                ),
//                new TextSpan(
//                  text: '€3.50 ',
//                  style: TextStyle(
//                    color: Color(0xff2f3f9e),
//                    fontSize: 18,
//                    fontFamily: "Avenir",
//                    fontWeight: FontWeight.w400,
//                  ),
//                ),
//                new TextSpan(
//                  text: 'will be transferred to your wishlist savings!',
//                  style: TextStyle(
//                    color: Color(0xff2f3f9e),
//                    fontSize: 18,
//                    fontFamily: "Avenir",
//                    fontWeight: FontWeight.w300,
//                  ),
//                ),
//              ],
//            ),
//          ),
//        ),
//        SizedBox(
//          height: getSizeHeight(context, 3),
//        ),
//        Container(
//          width: getSizeWidth(context, 50),
//          child: Text(
//            "You can transfer the savings back to your main wallet anytime.",
//            maxLines: 3,
//            textAlign: TextAlign.center,
//            style: TextStyle(
//              color: Color(0xff2f3f9e),
//              fontSize: 18,
//              fontFamily: "Avenir",
//              fontWeight: FontWeight.w300,
//            ),
//          ),
//        ),
//        SizedBox(
//          height: getSizeHeight(context, 3),
//        ),
//        Text(
//          "Good Luck!",
//          textAlign: TextAlign.center,
//          style: TextStyle(
//            color: Color(0xff2f3f9e),
//            fontSize: 20,
//            fontFamily: "Avenir",
//            fontWeight: FontWeight.w500,
//          ),
//        ),
//        SizedBox(
//          height: getSizeHeight(context, 4),
//        ),
//        Container(
//          height: getSizeWidth(context, 17),
//          width: getSizeWidth(context, 17),
//          child: new DecoratedBox(
//            decoration: new BoxDecoration(
//              borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
//            ),
//            child: Image.asset("./assets/images/luck.png", fit: BoxFit.contain),
//          ),
//        ),
//        SizedBox(
//          height: getSizeHeight(context, 4),
//        ),
//        Container(
//          height: getSizeHeight(context, 5.6),
//          width: getSizeWidth(context, 10),
//          child: RaisedButton(
//            child: Text(
//              "BACK TO HOME",
//              style: TextStyle(
//                fontSize: 14,
//                fontFamily: "Avenir",
//                fontWeight: FontWeight.w400,
//                color: Colors.white,
//              ),
//            ),
//            color: Color(0xff2f3f9e),
//            onPressed: () {},
//          ),
//        ),
//        SizedBox(
//          height: getSizeHeight(context, 5),
//        ),
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