import 'package:flutter/material.dart';

class TotalOrder extends StatelessWidget {
  final int totalItem;
  final String totalPrice;

  TotalOrder({this.totalItem, this.totalPrice});

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.all(20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Text("Subtotal($totalItem items)"),
            ),
            Text(
              totalPrice,
              style: TextStyle(fontSize: 28.0),
            )
          ],
        ),
      );
}
