import 'dart:async';

import 'package:covid/screens/inventory.dart';
import 'package:covid/screens/map.dart';
import 'package:covid/screens/recipes.dart';
import 'package:covid/utils.dart';
import 'package:covid/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> with TickerProviderStateMixin {
  double _tabBarHeight = 60;
  double _bottomBarHeight = 0;

  GlobalKey _pageKey = new GlobalKey();

  Completer<GoogleMapController> _controller = Completer();
  final LatLng myLocation = LatLng(59.345744, 18.0646403);

  @override
  void initState() {
    super.initState();
  }

  double zoomVal = 5.0;

  Widget _buildTabBar(TabController controller) {
    return new SizedBox(
      width: MediaQuery.of(context).size.width,
      height: getSizeHeight(context, 7.5),
      child: new Container(
        decoration: new BoxDecoration(
          color: const Color(0xff564787),
        ),
        child: new TabBar(
          labelPadding: EdgeInsets.only(left: 5,right: 5),
          indicatorColor: Colors.white,
          unselectedLabelColor: Color(0xffDBCBD8),
          controller: controller,
          labelColor: Colors.white,
          labelStyle: const TextStyle(
//              color: Colors.white,
              fontWeight: FontWeight.w500,
//              fontFamily: "Roboto",
//              fontStyle: FontStyle.normal,
              fontSize: 15.0),
          tabs: <Widget>[
            new Tab(
              text: "Supermarkets",
            ),
            new Tab(
              text: "Inventory",
            ),
            new Tab(
              text: "Recipes",
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var tabController = new TabController(vsync: this, length: 3);
    return SafeArea(
      child: Scaffold(
        appBar: MyCustomAppBar(height: 90),
        body: new Stack(
          children: <Widget>[
            _buildTabBar(tabController),
            new Container(
              padding: EdgeInsets.only(top: _tabBarHeight),
              height: MediaQuery.of(context).size.height -
                  _tabBarHeight -
                  _bottomBarHeight,
              child: new TabBarView(
                physics: NeverScrollableScrollPhysics(),
                key: _pageKey,
                controller: tabController,
                children: <Widget>[
                  MapPage(),
                  InventoryPage(),
                  RecipesPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
