// To parse this JSON data, do
//
//     final cartItem = cartItemFromJson(jsonString);

import 'dart:convert';

CartItem cartItemFromJson(String str) => CartItem.fromJson(json.decode(str));

String cartItemToJson(CartItem data) => json.encode(data.toJson());

class CartItem {
  final String name;
  final String unit;
  final double price;
  final String image;
  int quantity;

  CartItem(
      {required this.name,
      required this.unit,
      required this.price,
      required this.image,
      this.quantity = 0})
      : assert(quantity >= 0);

  CartItem copyWith(
          {String? name,
          String? unit,
          double? price,
          String? image,
          int? quantity}) =>
      CartItem(
          name: name ?? this.name,
          unit: unit ?? this.unit,
          price: price ?? this.price,
          image: image ?? this.image,
          quantity: quantity ?? this.quantity);

  factory CartItem.fromJson(Map<String, dynamic> json) => CartItem(
      name: json["name"],
      unit: json["unit"],
      price: json["price"],
      image: json["image"],
      quantity: json["quantity"]);

  Map<String, dynamic> toJson() => {
        "name": name,
        "unit": unit,
        "price": price,
        "image": image,
        "quantity": quantity
      };
}
