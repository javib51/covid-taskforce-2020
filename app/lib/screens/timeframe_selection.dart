import 'package:flutter/material.dart';
import 'package:covid/utils/const_variables.dart';

class TimeframeSelectionPage extends StatefulWidget {
  @override
  State<TimeframeSelectionPage> createState() => _TimeframeSelectionPageState();
}

class _TimeframeSelectionPageState extends State<TimeframeSelectionPage> {
  @override
  void initState() {
    super.initState();
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      color: purpleButtonActive,
      child: Center(
        child: ListView(
          children: <Widget>[
            FlatButton(
              child: Text("Map"),
              onPressed: () {
//                Navigator.pushNamed(context, AppRoutes.map);
              },
            ),
            FlatButton(
              child: Text("Shopping Basket"),
              onPressed: () {
//                Navigator.pushNamed(context, AppRoutes.shoppingBasket);
              },
            ),
            FlatButton(
              child: Text("Timeframe Selection"),
              onPressed: () {
//                Navigator.pushNamed(context, AppRoutes.timeframeSelection);
              },
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: new Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff141a46),
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
          title: Text(
            "Timeframe Selection",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: "Avenir",
              fontWeight: FontWeight.w400,
            ),
          ),
          leading: Container(),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
//                Navigator.pushNamed(context, AppRoutes.value_settings);
              },
            ),
          ],
        ),
        body: _buildBody(context),
      ),
    );
  }
}
