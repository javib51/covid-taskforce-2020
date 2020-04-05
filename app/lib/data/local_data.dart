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
        name: "Broccoli",
        available: true,
        price: 2.4,
        measureType: "kg",
        photo: 'assets/Group.png',
        units: 0),
    Item(
        name: "Lettuce",
        available: true,
        price: 3.8,
        measureType: "kg",
        photo: 'assets/Group4.png',
        units: 0),
    Item(
        name: "Tomatoes",
        available: true,
        price: 4.7,
        measureType: "kg",
        photo: 'assets/tomatos.png',
        units: 0),
    Item(
        name: "Milk",
        available: true,
        price: 6.4,
        measureType: "kg",
        photo: 'assets/Group6.png',
        units: 0),
  ];

  List<Item> basket_selected = [
  ];

  List<InventoryItem> inventory = [
    InventoryItem(
        name: "Eggs",
        expirationDays: 12,
        expirationTime: DateTime.parse('2020-04-01 00:00:00'),
        photo: 'assets/Group.png',
        units: 1),
    InventoryItem(
        name: "Cheese",
        expirationDays: 30,
        expirationTime: DateTime.parse('2020-02-01 00:00:00'),
        photo: 'assets/cheese.png',
        units: 1),
    InventoryItem(
        name: "Bananas",
        expirationDays: 9,
        expirationTime: DateTime.parse('2020-03-30 00:00:00'),
        photo: 'assets/bananas.png',
        units: 1),
    InventoryItem(
        name: "Salmon Fillet",
        expirationDays: 9,
        expirationTime: DateTime.parse('2020-03-30 00:00:00'),
        photo: 'assets/salmon.png',
        units: 1),
    InventoryItem(
        name: "Milk",
        expirationDays: 13,
        expirationTime: DateTime.parse('2020-03-31 00:00:00'),
        photo: 'assets/Group6.png',
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
