import 'package:covid/data/item.dart';

class Recipe {
  String photo;
  String name;
  List<Item> items;
  bool missing;

  Recipe({this.photo, this.name, this.items, this.missing});
}
