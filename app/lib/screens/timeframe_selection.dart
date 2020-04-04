import 'package:covid/utils.dart';
import 'package:covid/utils/const_variables.dart';
import 'package:flutter/material.dart';

class TimeframeSelectionPage extends StatefulWidget {
  @override
  State<TimeframeSelectionPage> createState() => _TimeframeSelectionPageState();
}

class _TimeframeSelectionPageState extends State<TimeframeSelectionPage> {
  bool selected = false;
  int selectedButton = 0;

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
          borderRadius: new BorderRadius.all(const Radius.circular(6.0))),
      child: new Container(
        margin: EdgeInsets.only(
            left: getSizeHeight(context, 7),
            right: getSizeHeight(context, 7),
            top: getSizeHeight(context, 15),
            bottom: getSizeHeight(context, 7)),
        child: Center(
          child: ListView(children: <Widget>[
            SizedBox(
              child: Text("Please select when you need the delivery latest by:",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: getSizeHeight(context, 3.3),
                    fontFamily: "Core Sans G",
                    color: purpleButtonActive,
                  )),
            ),
            SizedBox(
              height: getSizeHeight(context, 5),
            ),
            //TODO: Implement a sort of custom radio button so that it performs as desired (states)
            SizedBox(
              height: getSizeHeight(context, 5),
              child: FlatButton(
                color: selectedButton == 1
                    ? turquoiseDarkButton
                    : paleGreenTextBackground,
                child: Text("By tomorrow",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: getSizeHeight(context, 2),
                      fontFamily: "Core Sans G",
                      color: blackText,
                    )),
                onPressed: () {
                  selectedButton = 1;
                  selected = true;
                  setState(() {});
                  //                  Navigator.pushNamed(context, AppRoutes.map);
                },
              ),
            ),
            SizedBox(
              height: getSizeHeight(context, 2),
            ),
            SizedBox(
              height: getSizeHeight(context, 5),
              child: FlatButton(
                color: selectedButton == 2
                    ? turquoiseDarkButton
                    : paleGreenTextBackground,
                child: Text("This week",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: getSizeHeight(context, 2),
                      fontFamily: "Core Sans G",
                      color: blackText,
                    )),
                onPressed: () {
                  selectedButton = 2;
                  selected = true;
                  setState(() {});
                  //                  Navigator.pushNamed(context, AppRoutes.map);
                },
              ),
            ),
            SizedBox(
              height: getSizeHeight(context, 2),
            ),
            SizedBox(
              height: getSizeHeight(context, 5),
              child: FlatButton(
                color: selectedButton == 3
                    ? turquoiseDarkButton
                    : paleGreenTextBackground,
                child: Text("Next week",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: getSizeHeight(context, 2),
                      fontFamily: "Core Sans G",
                      color: blackText,
                    )),
                onPressed: () {
                  selectedButton = 3;
                  selected = true;

                  setState(() {});
                  //                  Navigator.pushNamed(context, AppRoutes.map);
                },
              ),
            ),
            SizedBox(
              height: getSizeHeight(context, 2),
            ),
            SizedBox(
              height: getSizeHeight(context, 5),
              child: FlatButton(
                color: selectedButton == 4
                    ? turquoiseDarkButton
                    : paleGreenTextBackground,
                child: Text("Specific day",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: getSizeHeight(context, 2),
                      fontFamily: "Core Sans G",
                      color: blackText,
                    )),
                onPressed: () {
                  selectedButton = 4;
                  selected = true;
                  setState(() {});
                  //                  Navigator.pushNamed(context, AppRoutes.map);
                },
              ),
            ),
            SizedBox(
              height: getSizeHeight(context, 5),
            ),
            //TODO: If any of the radio buttons above is selected, this button's state changes and it becomes clickable
            SizedBox(
              height: getSizeHeight(context, 8),
              width: getSizeWidth(context, 1),
              child: FlatButton(
                color: purpleButtonNonActive,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(12.0),
                    side: BorderSide(color: Colors.purple)),
                child: Text("Confirm order",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: getSizeHeight(context, 2),
                      fontFamily: "Core Sans G",
                      color: turquoiseLightButton,
                    )),
                onPressed: !selected
                    ? null
                    : () {
                        //                  Navigator.pushNamed(context, AppRoutes.map);
                      },
              ),
            ),
          ]),
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
