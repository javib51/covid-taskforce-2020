import 'package:covid/data/item.dart';

class InventoryItem extends Item {
  String photo;
  String name;
  int units;
  int expirationDays;
  DateTime expirationTime;

  InventoryItem({this.photo, this.name, this.expirationDays, this.expirationTime,this.units});
}
