import 'package:covid/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:covid/screens/pickup_selection.dart';

class DashboardPage extends StatefulWidget {
  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  void initState() {
    super.initState();
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      child: Center(
        child: ListView(
          children: <Widget>[
//            FlatButton(
//              child: Text("Map"),
//              onPressed: () {
//                Navigator.pushNamed(context, AppRoutes.map);
//              },
//            ),
            FlatButton(
              child: Text("Shopping Basket"),
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.shoppingBasket);
              },
            ),
            FlatButton(
              child: Text("Timeframe Selection delivery"),
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.timeframeSelection);
              },
            ),
            FlatButton(
              child: Text("Timeframe Selection pick up"),
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.timeframeSelectionPickup);
              },
            ),
            FlatButton(
              child: Text("Selection pick extra up"),
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.selectionPickExtra);
              },
            ),
            FlatButton(
              child: Text("Landing page"),
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.landingPage);
              },),
            FlatButton(
              child: Text("pickupselection"),
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.pickupselection);
              },
            ),
            FlatButton(
              child: Text("pickupinfo"),
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.pickupInfo);
              },
            ),
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
            "Dashboard",
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
