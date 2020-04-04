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
            top: getSizeHeight(context, 15),
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
              height: getSizeHeight(context, 5),
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
