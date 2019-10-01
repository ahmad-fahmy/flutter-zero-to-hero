import 'package:flutter/material.dart';

class DetailProduct extends StatelessWidget {
  final String name;
  final String price;

  DetailProduct({this.name, this.price});

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              this.name,
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 30.0),
              child: Text(
                this.price,
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffa00d12),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(bottom: 20.0),
              child: RaisedButton(
                padding: EdgeInsets.symmetric(
                  vertical: 18.0,
                  horizontal: 32.0,
                ),
                color: Color(0xffffca04),
                child: Text(
                  "Beli Sekarang".toUpperCase(),
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            Text(
              "Siap dikirim dalam 1-3 hari",
              style: TextStyle(
                color: Color(0xffd9534f),
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      );
}
