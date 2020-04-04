import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GroceryShop {
  final LatLng position;
  final String id;
  final String name;
  final String photo;
  final double raiting;
  final int reviews;
  final Color color;
  final icon;

  GroceryShop(
      {this.position,
      this.id,
      this.name,
      this.photo,
      this.raiting,
      this.reviews,
      this.color,
      this.icon});
}

final List<GroceryShop> groceries = [
  GroceryShop(
      id: "ica1",
      name: "ICA Supermarket",
      position: LatLng(59.344848, 18.058154),
      photo:
          "https://lh5.googleusercontent.com/p/AF1QipM-wrQ_6VWkpFYG4wnLhCXIoUtOC7IHf6UbWIxB=w408-h306-k-no",
      raiting: 3.8,
      reviews: 502,
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      color: Colors.blueAccent,
  ),
  GroceryShop(
    id: "coop1",
    name: "Tree Bistro",
    position: LatLng(59.345182, 18.060724),
    photo:
        "https://lh5.googleusercontent.com/p/AF1QipP_NqJFCbvsI9vIwmiK98cOUJOGfHRwVwzZUCI9=w408-h544-k-no",
    raiting: 3.8,
    reviews: 502,
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
    color: Color(0xff6200ee),
  ),
  GroceryShop(
    id: "hemkop1",
    name: "Hemköp",
    position: LatLng(59.341925, 18.064125),
    photo:
        "https://lh5.googleusercontent.com/p/AF1QipP5MH9Hm0vYlpfc3DOTqBhZmrGWyb6tCgpHWNO6=w408-h306-k-no",
    raiting: 3.8,
    reviews: 502,
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
    color: Colors.orange,
  ),
];
