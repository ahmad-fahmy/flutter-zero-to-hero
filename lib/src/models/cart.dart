import 'package:flutter_zero_to_hero/src/models/cart_item.dart';

class Cart {
  List<CartItem> items;
  double totalPrice;

  Cart(this.items, this.totalPrice);

  Cart.fromMap(Map<String, dynamic> cart) {
    items = cart["products"] != null && (cart["products"] as List).length > 0
        ? (cart["products"] as List)
            .map((product) => CartItem.fromMap(product))
            .toList()
        : List();
    totalPrice = cart["total"];
  }
}
