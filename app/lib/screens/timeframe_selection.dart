import 'package:covid/utils/const_variables.dart';
import 'package:covid/utils.dart';
import 'package:flutter/material.dart';

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
      margin: EdgeInsets.only(
          left: getSizeHeight(context, 2),
          right: getSizeHeight(context, 2),
          top: getSizeHeight(context, 2),
          bottom: getSizeHeight(context, 10)),
      decoration: new BoxDecoration(
          color: purpleBackground,
          borderRadius: new BorderRadius.all(const Radius.circular(6.0))
      ),
      child: new Container(
        color: purpleButtonNonActive,
        margin: EdgeInsets.only(
            left: getSizeHeight(context, 7),
            right: getSizeHeight(context, 7),
            top: getSizeHeight(context, 15),
            bottom: getSizeHeight(context, 7)),
        child: Center(
          child: ListView(
            children: <Widget>[
              Center(
                child: Text(
                  "Please select when you need the delivery latest by:",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: getSizeHeight(context, 3.3),
                      fontFamily: "Core Sans G",
                      color: purpleButtonActive,
                  )
                ),
              ),
              FlatButton(
                color: paleGreenTextBackground,
                child: Text(
                    "By tomorrow",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: getSizeHeight(context, 2),
                      fontFamily: "Core Sans G",
                      color: blackText,
                  )
                ),
                onPressed: () {
//                  Navigator.pushNamed(context, AppRoutes.map);
                },
              ),
              FlatButton(
                color: paleGreenTextBackground,
                child: Text(
                    "This week",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: getSizeHeight(context, 2),
                      fontFamily: "Core Sans G",
                      color: blackText,
                    )
                ),
                onPressed: () {
//                  Navigator.pushNamed(context, AppRoutes.map);
                },
              ),
              FlatButton(
                color: paleGreenTextBackground,
                child: Text(
                    "Next week",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: getSizeHeight(context, 2),
                      fontFamily: "Core Sans G",
                      color: blackText,
                    )
                ),
                onPressed: () {
//                  Navigator.pushNamed(context, AppRoutes.map);
                },
              ),
              FlatButton(
                color: paleGreenTextBackground,
                child: Text(
                    "Specific day",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: getSizeHeight(context, 2),
                      fontFamily: "Core Sans G",
                      color: blackText,
                    )
                ),
                onPressed: () {
//                  Navigator.pushNamed(context, AppRoutes.map);
                },
              ),
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
