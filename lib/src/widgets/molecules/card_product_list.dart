import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_zero_to_hero/src/models/detail_page_args.dart';
import 'package:flutter_zero_to_hero/src/widgets/molecules/content_product_list.dart';
import 'package:flutter_zero_to_hero/src/widgets/molecules/image_placeholder.dart';
import 'package:flutter_zero_to_hero/src/widgets/molecules/name_product_list.dart';

class CardProduct extends StatelessWidget {
  final String imageUrl;
  final String nameProduct;
  final String priceProduct;
  final int qtyProduct;
  CardProduct({
    this.imageUrl,
    this.nameProduct,
    this.priceProduct,
    this.qtyProduct,
  });

  @override
  Widget build(BuildContext context) => ListTile(
        leading: ImagePlaceholder(
          imageUrl: imageUrl,
          widthImage: 60.0,
          heightImage: 60.0,
        ),
        title: NameProductList(nameProduct),
        subtitle: ContentProductList(qty: this.qtyProduct, price: priceProduct),
        trailing: Icon(Icons.chevron_right),
        isThreeLine: true,
        onTap: () {
          Navigator.of(context).pushNamed(
            '/detail',
            arguments: DetailProductArgs(
              imageUrl: this.imageUrl,
              name: this.nameProduct,
              price: this.priceProduct,
            ),
          );
        },
      );
}
