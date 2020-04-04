import 'package:covid/screens/dashboard.dart';
import 'package:covid/screens/landpage.dart';
import 'package:covid/screens/map.dart';
import 'package:covid/screens/shopping_basket.dart';
import 'package:covid/screens/timeframe_selection.dart';
import 'package:flutter/material.dart';

class AppRoutes {

  static const wish_list = '/wishlist';
  static const dashboard = '/dashboard';
  static const progress = '/progress';
  static const map = '/map';
  static const shoppingBasket = '/basket';
  static const timeframeSelection = '/timeframe';
  static const landingPage = '/landingPage';

  static Map<String, WidgetBuilder> getRoutes() {
    return <String, WidgetBuilder>{
      AppRoutes.dashboard: (context) => DashboardPage(),
      AppRoutes.map: (context) => MapPage(),
      AppRoutes.shoppingBasket: (context) => ShoppingBasketPage(),
      AppRoutes.timeframeSelection: (context) => TimeframeSelectionPage(),
      AppRoutes.landingPage: (context) => LandingPage(),
    };
  }
}
