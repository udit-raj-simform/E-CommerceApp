import 'package:e_commerce_app/values/app_globals/app_exports.dart';

class ClothingItems {
  static final List items = [
    {
      "name": "Black T-Shirt",
      "price": 19.99,
      "size": "S",
      "image": "https://loremflickr.com/320/240/cake"
    },
    {
      "name": "White Sneakers",
      "price": 59.99,
      "size": "M",
      "image": "https://loremflickr.com/320/240/dollar"
    },
    {
      "name": "Blue Jeans",
      "price": 39.99,
      "size": "L",
      "image": "https://loremflickr.com/320/240/day"
    },
    {
      "name": "Red Dress",
      "price": 79.99,
      "size": "XL",
      "image": "https://loremflickr.com/320/240/moon"
    },
    {
      "name": "Green Hoodie",
      "price": 29.99,
      "size": "XXL",
      "image": "https://loremflickr.com/320/240/sun"
    },
    {
      "name": "Brown Boots",
      "price": 69.99,
      "size": "38",
      "image": "https://loremflickr.com/320/240/night"
    },
    {
      "name": "Yellow Scarf",
      "price": 19.99,
      "size": "40",
      "image": "https://loremflickr.com/320/240/santa"
    },
    {
      "name": "Pink Hat",
      "price": 29.99,
      "size": "42",
      "image": "https://loremflickr.com/320/240/devil"
    },
    {
      "name": "Purple Jacket",
      "price": 59.99,
      "size": "44",
      "image": "https://loremflickr.com/320/240/god"
    },
    {
      "name": "White Tank Top",
      "price": 14.99,
      "size": "S",
      "image": "https://loremflickr.com/320/240/fairy"
    },
    {
      "name": "Black Jeans",
      "price": 29.99,
      "size": "M",
      "image": "https://loremflickr.com/320/240/mouse"
    },
    {
      "name": "Gray Sweatshirt",
      "price": 34.99,
      "size": "L",
      "image": "https://loremflickr.com/320/240/bog"
    },
    {
      "name": "Blue Dress",
      "price": 49.99,
      "size": "XL",
      "image": "https://loremflickr.com/320/240/girl"
    },
    {
      "name": "Brown Shoes",
      "price": 54.99,
      "size": "38",
      "image": "https://loremflickr.com/320/240/paris"
    },
    {
      "name": "Yellow Shirt",
      "price": 19.99,
      "size": "40",
      "image": "https://loremflickr.com/320/240/cloth"
    },
    {
      "name": "Pink Skirt",
      "price": 29.99,
      "size": "42",
      "image": "https://loremflickr.com/320/240/dog"
    },
    {
      "name": "Purple Bag",
      "price": 59.99,
      "size": "44",
      "image": "https://loremflickr.com/320/240/"
    },
  ];

  static final List<CartItem> clothingItems = List.generate(
    items.length,
    (index) => CartItem(
      name: items[index]["name"],
      unit: items[index]["size"],
      price: items[index]["price"],
      image: items[index]["image"],
    ),
  );
}
