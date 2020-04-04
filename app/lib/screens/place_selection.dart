import 'package:covid/utils.dart';
import 'package:flutter/material.dart';

class PlaceOrder1 extends StatefulWidget {
  @override
  State<PlaceOrder1> createState() => _PlaceOrder1State();
}

class _PlaceOrder1State extends State<PlaceOrder1> {
  @override
  void initState() {
    super.initState();
  }

  Widget _buildChallenge(
      BuildContext context, String title, String subtitle, String asset) {
    return Container(
//      height: getSizeHeight(context, 16.9),
      width: getSizeWidth(context, 99.1),
      child: new DecoratedBox(
        decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Avenir",
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: getSizeHeight(context, 0.8),
                    ),
                    Container(
                      width: getSizeWidth(context, 60),
                      child: Text(
                        subtitle,
                        maxLines: 3,
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Avenir",
                          fontWeight: FontWeight.w400,
                          color: Color(0xff2f3f9e),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: getSizeWidth(context, 2),
                ),
                Container(
                  height: getSizeWidth(context, 17),
                  width: getSizeWidth(context, 17),
                  child: new DecoratedBox(
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                      new BorderRadius.all(new Radius.circular(10.0)),
//                        boxShadow: [
//                          new BoxShadow(
//                              color: Colors.black54,
////                  offset: new Offset(1.0, 2.0),
//                              blurRadius: 1.0)
//                        ],
                    ),
                    child: asset == null
                        ? Container(
                      child: Icon(Icons.error),
                    )
                        : Image.asset(asset, fit: BoxFit.contain),
//                    : CachedNetworkImage(
//                        imageUrl: imageUrl,
//                        fit: BoxFit.contain,
//                        placeholder: (context, url) =>
//                            Center(child: new CircularProgressIndicator()),
//                        errorWidget: (context, url, error) =>
//                            new Icon(Icons.error),
//                      ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(
                      width: getSizeWidth(context, 2),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
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
