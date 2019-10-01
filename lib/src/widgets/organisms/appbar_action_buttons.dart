import 'package:flutter/material.dart';

List<Widget> AppbarActionButtons() {
  List<Widget> actionButton = List();

  Widget search = IconButton(
    onPressed: () {},
    icon: Icon(Icons.search),
  );
  actionButton.add(search);

  Widget shoppingCart = IconButton(
    onPressed: () {},
    icon: Icon(Icons.shopping_cart),
  );
  actionButton.add(shoppingCart);

  return actionButton;
}
