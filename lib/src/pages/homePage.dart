import 'package:flutter/material.dart';
import 'package:flutter_zero_to_hero/src/models/cart.dart';
import 'package:flutter_zero_to_hero/src/shared/data_dummy.dart';
import 'package:flutter_zero_to_hero/src/widgets/organisms/appbar_action_buttons.dart';
import 'package:flutter_zero_to_hero/src/widgets/template/CartTemplate.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  String title;
  Cart cart;

  @override
  void initState() {
    super.initState();

    setState(() {
      title = "My Cart";
      cart = Cart.fromMap(DataDummy.cart);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        actions: AppbarActionButtons(),
      ),
      body: CartTemplate(
        title: title.toUpperCase(),
        products: cart.items,
        totalPrice: cart.totalPrice,
      ),
    );
  }
}
