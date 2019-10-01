import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContentProductList extends StatelessWidget {
  final String price;
  final int qty;
  ContentProductList({this.price, this.qty});

  @override
  Widget build(BuildContext context) => Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 5.0),
            child: Text("$qty x "),
          ),
          Text(
            price,
            style: TextStyle(
              color: Colors.blueGrey,
            ),
          ),
        ],
      );
}
