import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String title;
  Heading(this.title);

  @override
  Widget build(BuildContext context) => Container(
        padding:
            EdgeInsets.only(top: 30.0, right: 20.0, bottom: 40.0, left: 20.0),
        child: Text(
          title,
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
      );
}
