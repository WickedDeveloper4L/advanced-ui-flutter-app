import 'package:advanced_ui_e_commerce/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
//products for sale
  final List<Product> shopItems = [
    Product(
        name: "Product 1",
        description: "product description of product 1",
        // imagePath: imagePath,
        price: 8.9),
    Product(
        name: "Product 2",
        description: "product description of product 2",
        // imagePath: imagePath,
        price: 8.9),
    Product(
        name: "Product 3",
        description: "product description of product 3",
        // imagePath: imagePath,
        price: 8.9),
    Product(
        name: "Product 4",
        description: "product description of product 4",
        // imagePath: imagePath,
        price: 8.9),
    Product(
        name: "Product 5",
        description: "product description of product 5",
        // imagePath: imagePath,
        price: 8.9)
  ];

  //user cart
  final List<Product> cartItems = [];

  //get all items
  List<Product> get shop => shopItems;

  //get cart items

  List<Product> get cart => cartItems;

  //add product to cart
  void addToCart(Product item) {
    cartItems.add(item);
    notifyListeners();
  }

  //void remove from cart

  void removeFromCart(Product item) {
    cartItems.remove(item);
    notifyListeners();
  }
}
