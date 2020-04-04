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
      margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 100.0),
      decoration: new BoxDecoration(
          color: purpleBackground,
          borderRadius: new BorderRadius.all(const Radius.circular(6.0))
      ),
      child: new Container(
        color: purpleButtonNonActive,
        margin: const EdgeInsets.only(left: 50.0, right: 50.0, top: 80.0, bottom: 50.0),
        child: Center(
          child: ListView(
            children: <Widget>[
              Center(
                child: Text(
                  "Please select when you need the delivery latest by:",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20.0,
                      color: purpleButtonActive,
                  )
                ),
              )
            ]
          ),
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
