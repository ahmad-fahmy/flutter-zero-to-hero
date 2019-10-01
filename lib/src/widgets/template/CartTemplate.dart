import 'package:flutter/material.dart';
import 'package:flutter_zero_to_hero/src/models/cart_item.dart';
import 'package:flutter_zero_to_hero/src/shared/libraries/helper.dart';
import 'package:flutter_zero_to_hero/src/widgets/organisms/buttom_next.dart';
import 'package:flutter_zero_to_hero/src/widgets/organisms/heading.dart';
import 'package:flutter_zero_to_hero/src/widgets/organisms/list_product.dart';
import 'package:flutter_zero_to_hero/src/widgets/organisms/total_order.dart';

class CartTemplate extends StatelessWidget {
  final String title;
  final List<CartItem> products;
  final double totalPrice;
  final Color bgColor = Color(0xffF8E8E0);

  CartTemplate({this.title, this.products, this.totalPrice});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Heading(title),
          Container(
            height: MediaQuery.of(context).size.height - 200.0,
            padding: EdgeInsets.symmetric(vertical: 20.0),
            decoration: BoxDecoration(
              color: Color(0xffF8E8E0),
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(40.0),
                topRight: const Radius.circular(40.0),
              ),
            ),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ListProduct(products),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 50.0),
                  child: TotalOrder(
                    totalItem: getTotalItems(products),
                    totalPrice: priceFormat(totalPrice),
                  ),
                ),
                ButtonNext(
                  title: "Checkout",
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      );

  int getTotalItems(List<CartItem> products) {
    int total = 0;
    products.forEach((product) {
      total += product.qty;
    });
    return total;
  }
}
