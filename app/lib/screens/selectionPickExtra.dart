import 'package:covid/utils.dart';
import 'package:covid/utils/const_variables.dart';
import 'package:covid/widgets/appbar.dart';
import 'package:flutter/material.dart';

class SelectionPickExtraPage extends StatefulWidget {
  @override
  State<SelectionPickExtraPage> createState() => _SelectionPickExtraPageState();
}

class _SelectionPickExtraPageState extends State<SelectionPickExtraPage> {
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
          bottom: getSizeHeight(context, 5)),
      decoration: new BoxDecoration(
          color: purpleBackground,
          borderRadius: new BorderRadius.all(const Radius.circular(6.0))),
      child: new Container(
        margin: EdgeInsets.only(
            left: getSizeHeight(context, 7),
            right: getSizeHeight(context, 7),
            top: getSizeHeight(context, 10),
            bottom: getSizeHeight(context, 7)),
        child: Center(
          child: ListView(children: <Widget>[
            SizedBox(
              child: Text("Could you help out others who cannot pick up their order?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: getSizeHeight(context, 3.3),
                    color: purpleButtonActive,
                  )),
            ),
            SizedBox(
              height: getSizeHeight(context, 5),
            ),
            SizedBox(
              height: getSizeHeight(context, 5.5),
              child: FlatButton(
                color: selectedButton == 1
                    ? turquoiseDarkButton
                    : paleGreenTextBackground,
                child: Text("Yes",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: getSizeHeight(context, 2),
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
              height: getSizeHeight(context, 1.25),
            ),
            SizedBox(
              height: getSizeHeight(context, 5.5),
              child: FlatButton(
                color: selectedButton == 2
                    ? turquoiseDarkButton
                    : paleGreenTextBackground,
                child: Text("No",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: getSizeHeight(context, 2),
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
              child:  Stack(
                  children: <Widget>[
                    Visibility(
                      visible: !selected,
                      child: Container(
                          color: paleGreenTextBackground,
                          padding: EdgeInsets.all(getSizeWidth(context, 3)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Icon(
                                      Icons.error_outline,
                                      color: Colors.black,
                                      size: 25.0,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    SizedBox(width: getSizeWidth(context, 2),)
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: getSizeWidth(context, 50),
                                      child: Text("Please consider helping drop off other people orders. We will match you to people who live near you or live on your way back home!",
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: getSizeHeight(context, 1.5),
                                            color: blackText,
                                          )),
                                    )
                                  ],
                                ),
                              ]
                          )
                      ),
                    ),
                    Visibility(
                      visible: selected,
                      child: Container(
                          padding: EdgeInsets.all(getSizeWidth(context, 3)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Visibility(
                                  visible: selectedButton == 1,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: getSizeWidth(context, 60),
                                        child: Text("Awesome! We’ll send you info on who’s order you’ll help with soon",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: getSizeHeight(context, 3.3),
                                              color: purpleButtonActive,
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    SizedBox(height: getSizeHeight(context, 4),)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: getSizeHeight(context, 8),
                                      padding: EdgeInsets.only(left: getSizeWidth(context, 10), right: getSizeWidth(context, 10)),
                                      child: FlatButton(
                                        color: purpleButtonActive,
                                        disabledColor: purpleButtonNonActive,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: new BorderRadius.circular(12.0),
                                        ),
                                        child: Text("Confirm order",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: getSizeHeight(context, 2),
                                              color: turquoiseLightButton,
                                            )),
                                        onPressed: () {
                                          //                  Navigator.pushNamed(context, AppRoutes.map);
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ]
                          )
                      ),
                    ),
                  ],
                )
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
        appBar: MyCustomAppBar(title: "Supermarket X", height: 90),
        body: _buildBody(context),
      ),
    );
  }
}
