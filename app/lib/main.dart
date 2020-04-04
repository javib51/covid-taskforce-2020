import 'package:covid/app_routes.dart';
import 'package:covid/keys.dart';
import 'package:covid/screens/dashboard.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatefulWidget {

  App();

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
    print("App");
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'covid-101',
//      key: Keys.globKey,
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        brightness: Brightness.light,
        // ignore: strong_mode_invalid_cast_new_expr
        primaryColor: Color(0xff2f3f9e),
        buttonColor: Colors.white,
//        appBarTheme: AppBarTheme(color: Colors.white),
        accentColor: Color(0xffec8b5e),
        backgroundColor: Colors.white,
      ),
      //home: new MyHomePage(key: new Key("aaaaa"),title: "My app -" + Config.helloMessage,),
      home: new DashboardPage(),
      navigatorKey: Keys.navKey,
      routes: AppRoutes.getRoutes(),
    );
  }
}