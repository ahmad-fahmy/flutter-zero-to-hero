import 'package:flutter/material.dart';
import 'package:flutter_zero_to_hero/src/models/cart_item.dart';
import 'package:flutter_zero_to_hero/src/shared/libraries/helper.dart';
import 'package:flutter_zero_to_hero/src/widgets/molecules/card_product_list.dart';

class ListProduct extends StatelessWidget {
  final List<CartItem> products;

  ListProduct(this.products);

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) => Card(
          color: Color(0xffF8E8E0),
          elevation: 0.0,
          child: CardProduct(
            imageUrl: products.elementAt(index).imageUrl,
            nameProduct: products.elementAt(index).name,
            priceProduct: priceFormat(products.elementAt(index).price),
            qtyProduct: products.elementAt(index).qty,
          ),
        ),
      );
}
