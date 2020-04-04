import 'package:covid/data/groceries.dart' as gc;
import 'package:covid/data/inventory_item.dart';
import 'package:covid/data/item.dart';

class LocalData {
  LocalData._privateConstructor();

  static final LocalData _instance = LocalData._privateConstructor();

  static LocalData get instance => _instance;
  List<gc.GroceryShop> groceries = gc.groceries;
  List<Item> basket = [
    Item(
      name: "name",
      available: true,
      price: 2.4,
      measureType: "kg",
      photo: 'assets/Group.png',
      units: 1
    ),
    Item(
        name: "name",
        available: true,
        price: 2.4,
        measureType: "kg",
        photo: 'assets/Group.png',
        units: 1
    ),
  ];

  List<InventoryItem> inventory = [
    InventoryItem(
        name: "name",
        expirationDays: 2,
        expirationTime: DateTime.now(),
        photo: 'assets/Group.png',
        units: 1
    ),
    InventoryItem(
        name: "name 1",
        expirationDays: 0,
        expirationTime: DateTime.now(),
        photo: 'assets/Group 4.png',
        units: 1
    ),
  ];
}
