import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zero_to_hero/src/models/detail_page_args.dart';
import 'package:flutter_zero_to_hero/src/pages/detailProductPage.dart';
import 'package:flutter_zero_to_hero/src/pages/homePage.dart';

class RoutesBmd {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => HomePage());
      case '/detail':
        DetailProductArgs args = settings.arguments;
        return MaterialPageRoute(
          builder: (context) => DetailProductPage(
            imageUrl: args.imageUrl,
            name: args.name,
            price: args.price,
          ),
        );
      default:
        return MaterialPageRoute(builder: (context) => HomePage());
    }
  }
}
