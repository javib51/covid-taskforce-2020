import 'package:covid/data/groceries.dart' as gc;
import 'package:covid/data/inventory_item.dart';
import 'package:covid/data/item.dart';
import 'package:covid/data/recipe.dart';

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
        units: 0),
    Item(
        name: "name",
        available: true,
        price: 2.4,
        measureType: "kg",
        photo: 'assets/Group.png',
        units: 0),
  ];

  List<InventoryItem> inventory = [
    InventoryItem(
        name: "name",
        expirationDays: 2,
        expirationTime: DateTime.now(),
        photo: 'assets/Group.png',
        units: 1),
    InventoryItem(
        name: "name 1",
        expirationDays: 0,
        expirationTime: DateTime.now(),
        photo: 'assets/Group4.png',
        units: 1),
  ];

  List<Recipe> recipes = [
    Recipe(
      name: "Meatball Spaghetti",
      photo: 'assets/spaghetti.png',
      missing: false,
      items: [
        InventoryItem(name: "Pasta", photo: 'assets/pasta.png'),
        InventoryItem(name: "Meat", photo: 'assets/meat.png'),
        InventoryItem(name: "Tomatos", photo: 'assets/tomatos.png'),
      ],
    ),
    Recipe(
      name: "Egg Fried Rice",
      photo: 'assets/fried_rice.png',
      missing: false,
      items: [
        InventoryItem(name: "rice", photo: 'assets/file5.png'),
        InventoryItem(name: "SOmething", photo: 'assets/file6.png'),
        InventoryItem(name: "Soya", photo: 'assets/file7.png'),
      ],
    ),
    Recipe(
      name: "French Fries",
      photo: 'assets/french_fries.png',
      missing: true,
      items: [
        InventoryItem(name: "Oil", photo: 'assets/oil.png'),
        InventoryItem(name: "Null", photo: 'assets/null.png'),
        InventoryItem(name: "salt", photo: 'assets/file11.png'),
      ],
    ),
  ];
}
