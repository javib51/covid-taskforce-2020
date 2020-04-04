import 'package:flutter/material.dart';

class Keys {
  static final globKey = new GlobalKey();
  static final navKey = new GlobalKey<NavigatorState>();
  var homeKey;

  static final Keys instance = new Keys._internal();

  factory Keys() {
    return instance;
  }

  Keys._internal();
}
