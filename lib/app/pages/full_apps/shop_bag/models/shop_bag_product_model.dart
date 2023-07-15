import 'package:flutter/material.dart';

class SHBProductModel {
  final String title, description, image;
  final int id, price, size;
  final Color color;

  SHBProductModel({
    required this.title,
    required this.description,
    required this.image,
    required this.id,
    required this.price,
    required this.size,
    required this.color,
  });
}

List<SHBProductModel> products = [
  SHBProductModel(
    title: "Product 1",
    description: "Product 1 description",
    image: "assets/images/shop_bag/bag_1.png",
    id: 1,
    price: 140,
    size: 10,
    color: Colors.pinkAccent,
  ),
  SHBProductModel(
    title: "Product 2",
    description: "Product 2 description",
    image: "assets/images/shop_bag/bag_2.png",
    id: 2,
    price: 210,
    size: 12,
    color: Colors.yellowAccent,
  ),
];
